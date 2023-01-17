<?php

declare(strict_types=1);

namespace App\DataFixtures;

use App\Entity\Addressing\Country;
use App\Entity\Addressing\Zone;
use App\Entity\Channel\Channel;
use App\Entity\Currency\Currency;
use App\Entity\Locale\Locale;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Psr\Container\ContainerInterface;
use App\Entity\Payment\PaymentMethod;
use App\Entity\Shipping\ShippingMethod;
use Sylius\Component\Shipping\Calculator\DefaultCalculators;

class ShopConfigurationFixtures extends Fixture
{
    public const CHANNEL_REFERENCE = 'melted_cheese';

    public const CURRENCIES = ['USD', 'EUR'];

    public const COUNTRIES = ['BR', 'FR'];

    public const ZONES = [
        "FR_BR" => [
            "code" => "FR_BR",
            "name" => "Zone France - Brésil",
            "type" => "country",
            "scope" => "all"
        ]
    ];

    private $container;

    public function __construct(
        ContainerInterface $container
    ) {
        $this->container = $container;
    }

    public function load(ObjectManager $manager)
    {
        // create Currencies
        foreach(self::CURRENCIES as $currencyCode) {
            $currency = $this->container->get('sylius.repository.currency')->findOneByCode($currencyCode);
            if (empty($currency)) {
                $currency = $this->createCurrency($manager, $currencyCode);
            }
        }

        // create fr_FR locale
        $locale_fr = $this->container->get('sylius.repository.locale')->findOneByCode('fr_FR');
        if (empty($locale_fr)) {
            $locale_fr = $this->createLocale($manager, 'fr_FR');
        }

        //Create Countries
        foreach(self::COUNTRIES as $countryData) {
            $country = $this->container->get('sylius.repository.country')->findOneByCode($countryData);
            if (empty($country)) {
                $country = $this->createCountry($manager, $countryData);
            }
        }

        //create Zone
        foreach(self::ZONES as $zoneData) {
            $zone = $this->container->get('sylius.repository.zone')->findOneByCode($zoneData['code']);
            if (empty($zone)) {
                $zone = $this->createZone($manager, $zoneData);
            }
        }

        $this->createZoneMember($zone);

        // create MeltedCheese Channel
        $channel = $this->createChannel($manager, $currency, $locale_fr, $zone);

        $gateway = $this->createGateway($manager);
        $this->createPaymentMethod($manager, $channel, $gateway);
        $this->createShippingMethod($manager, $channel, $zone);

    }

    public function createCountry($manager, $codeCountry)
    {
        $country = new Country();
        $country->setCode($codeCountry);
        $country->setEnabled(true);

        $manager->persist($country);
        $manager->flush();
    }

    public function createZone($manager, $zoneData)
    {
        $zone = new Zone();
        $zone->setCode($zoneData['code']);
        $zone->setName($zoneData['name']);
        $zone->setType($zoneData['type']);

        $manager->persist($zone);
        $manager->flush();

        return $zone;
    }

    public function createChannel($manager, $currency, $locale_fr, $zone)
    {
        $channel = new Channel();

        $code = self::CHANNEL_REFERENCE;
        $channel->setCode($code);
        $channel->setEnabled(true);
        $channel->setName($code);
        $channel->setBaseCurrency($currency);
        $channel->setDefaultLocale($locale_fr);
        $channel->setTaxCalculationStrategy('order_items_based');
        $channel->addLocale($locale_fr);
        $channel->setContactEmail(self::CHANNEL_REFERENCE.'@gmail.com');
        $channel->setAccountVerificationRequired(false);
        $channel->setDefaultTaxZone($zone);

        $manager->persist($channel);
        $manager->flush();

        $this->addReference($code, $channel);

        return $channel;
    }

    public function createCurrency($manager, $currencyCode)
    {
        $currency = new Currency();
        $currency->setCode($currencyCode);
        $manager->persist($currency);
        $manager->flush();

        return $currency;
    }

    public function createLocale($manager, $localeCode)
    {
        $locale = new Locale();
        $locale->setCode($localeCode);
        $manager->persist($locale);
        $manager->flush();

        return $locale;
    }

    public function createPaymentMethod($manager, $channel, $gateway)
    {
        $paymentMethodCash = $this->container->get('sylius.factory.payment_method')->createNew();
        $paymentMethodCash->setCode('cash_on_delivery');
        $paymentMethodCash->setName('Cash on delivery');
        $paymentMethodCash->addChannel($channel);
        $paymentMethodCash->setEnabled(true);
        $paymentMethodCash->setGatewayConfig($gateway);


        $this->container->get('sylius.repository.payment_method')->add($paymentMethodCash);

        $paymentMethodBankTransfer = $this->container->get('sylius.factory.payment_method')->createNew();
        $paymentMethodBankTransfer->setCode('bank_transfer');
        $paymentMethodBankTransfer->setName('Bank transfer');
        $paymentMethodBankTransfer->addChannel($channel);
        $paymentMethodBankTransfer->setEnabled(true);
        $paymentMethodBankTransfer->setGatewayConfig($gateway);


        $this->container->get('sylius.repository.payment_method')->add($paymentMethodBankTransfer);
    }

    public function createShippingMethod($manager, $channel, $zone)
    {
        $shippingMethod = $this->container->get('sylius.factory.shipping_method')->createNew();
        $shippingMethod->setCode('ups');
        $shippingMethod->setName('Ups');
        $shippingMethod->setCalculator(DefaultCalculators::FLAT_RATE);
        $shippingMethod->setConfiguration(['amount' => 50]);
        $shippingMethod->setZone($zone);
        $shippingMethod->setEnabled(true);
        $shippingMethod->addChannel($channel);
        $this->container->get('sylius.repository.shipping_method')->add($shippingMethod);

    }

    public function createGateway()
    {
        $gateway = $this->container->get('sylius.factory.gateway_config')->createNew();

        $gateway->setConfig([]);
        $gateway->setGatewayName('gateway');
        $gateway->setFactoryName('gateway_name');

        $this->container->get('sylius.repository.gateway_config')->add($gateway);

        return $gateway;
    }

    public function createZoneMember($zone)
    {
        $zoneMemberRepository = $this->container->get('sylius.repository.zone_member');
        $zoneMemberFactory = $this->container->get('sylius.factory.zone_member');
        foreach(self::COUNTRIES as $country) {
            $zoneMember = $zoneMemberRepository->findOneByCode($country);
            if (empty($zoneMember)) {
                $zoneMember = $zoneMemberFactory->createNew();
                $zoneMember->setBelongsTo($zone);
                $zoneMember->setCode($country);
                $zoneMemberRepository->add($zoneMember);
            }
        }
    }

}
