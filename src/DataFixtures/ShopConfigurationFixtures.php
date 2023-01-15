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

        // create FR country
        $country = $this->container->get('sylius.repository.country')->findOneByCode('FR');
        if (empty($country)) {
            $codeCountry = 'FR';
            $country = $this->createCountry($manager, $codeCountry);
        }

        // create BR country
        $country = $this->container->get('sylius.repository.country')->findOneByCode('BR');
        if (empty($country)) {
            $codeCountry = 'BR';
            $country = $this->createCountry($manager, $codeCountry);
        }

        // create FR Zone
        $zone = $this->container->get('sylius.repository.zone')->findOneByCode('FR-France');
        if (empty($zone)) {
            $code = 'FR-France';
            $zone = $this->createZone($manager, $code);
        }

        // create BR Zone
        $zone = $this->container->get('sylius.repository.zone')->findOneByCode('BR-Bresil');
        if (empty($zone)) {
            $code = 'BR-Bresil';
            $zone = $this->createZone($manager, $code);
        }

        // create MeltedCheese Channel
        $channel = $this->createChannel($manager, $currency, $locale_fr);

        // $this->createPaymentMethod($manager, $channel);
        // $this->createShippingMethod($manager, $channel);

    }

    public function createCountry($manager, $codeCountry)
    {
        $country = new Country();
        $country->setCode($codeCountry);
        $country->setEnabled(true);

        $manager->persist($country);
        $manager->flush();
    }

    public function createZone($manager, $code)
    {
        $zone = new Zone();
        $zone->setCode($code);
        $zone->setName($code);
        $zone->setType('country');

        $manager->persist($zone);
        $manager->flush();

        return $zone;
    }

    public function createChannel($manager, $currency, $locale_fr)
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

    // public function createPaymentMethod($manager, $channel)
    // {
    //     $paymentMethodCash = $this->container->get('sylius.factory.payment_method')->createNew();
    //     $paymentMethodCash->setCode('cash_on_delivery');
    //     $paymentMethodCash->setName('Cash on delivery');
    //     $paymentMethodCash->addChannel($channel);
    //     $paymentMethodCash->setEnabled(true);

    //     $this->container->get('sylius.repository.payment_method')->add($paymentMethodCash);


    //     $paymentMethodBankTransfer = $this->container->get('sylius.factory.payment_method')->createNew();
    //     $paymentMethodBankTransfer->setCode('bank_transfer');
    //     $paymentMethodBankTransfer->setName('Bank transfer');
    //     $paymentMethodBankTransfer->addChannel($channel);
    //     $paymentMethodBankTransfer->setEnabled(true);


    //     $this->container->get('sylius.repository.payment_method')->add($paymentMethodBankTransfer);
    // }

    // public function createShippingMethod($manager, $channel)
    // {
    //     $zones = $this->container->get('sylius.repository.zone')->findAll();

    //     foreach($zones as $zone ) {
    //         $shippingMethod = $this->container->get('sylius.factory.shipping_method')->createNew();
    //         $shippingMethod->setCode('ups');
    //         $shippingMethod->setName('Ups');
    //         $shippingMethod->setCalculator(DefaultCalculators::FLAT_RATE);
    //         $shippingMethod->setConfiguration(['amount' => 50]);
    //         $shippingMethod->setZone($zone);
    //         $shippingMethod->setEnabled(true);
    //         $this->container->get('sylius.repository.shipping_method')->add($shippingMethod);

    //         // $channel->addShippingMethod($shippingMethod);
    //     }

    // }

}
