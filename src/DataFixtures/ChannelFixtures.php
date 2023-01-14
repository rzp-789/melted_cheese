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

class ChannelFixtures extends Fixture
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

        // // create second en_GB locale
        // $locale_en = $this->container->get('sylius.repository.locale')->findOneByCode('en_US');
        // if (empty($locale_en)) {
        //     $locale_en = $this->createLocale($manager, 'en_US');
        // }

        // create FR country
        $country = $this->container->get('sylius.repository.country')->findOneByCode('FR');
        if (empty($country)) {
            $country = $this->createCountry($manager);
        }

        // create FR Zone
        $zone = $this->container->get('sylius.repository.zone')->findOneByCode('FR-France');
        if (empty($zone)) {
            $zone = $this->createZone($manager);
        }

        // create MeltedCheese Channel
        $channel = $this->createChannel($manager, $currency, $locale_fr);
        
    }

    public function createCountry($manager)
    {
        $country = new Country();
        $country->setCode('FR');
        $country->setEnabled(true);

        $manager->persist($country);
        $manager->flush();
    }

    public function createZone($manager)
    {
        $zone = new Zone();
        $zone->setCode('FR-France');
        $zone->setName('FR-France');
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

}
