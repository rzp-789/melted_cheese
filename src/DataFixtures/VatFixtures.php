<?php

declare(strict_types=1);

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Bundle\FixturesBundle\FixtureGroupInterface;
use Doctrine\Persistence\ObjectManager;
use Psr\Container\ContainerInterface;

class VatFixtures extends Fixture implements FixtureGroupInterface
{
    public const VAT_REFERENCE = 'vat_normal';

    private $container;

    public function __construct(
        ContainerInterface $container
    ) {
        $this->container = $container;
    }

    public static function getGroups(): array
    {
        return ['vatrates'];
    }

    public function load(ObjectManager $manager)
    {
        // create tax category vat_normal, vat_intermediaire, vat_reduit, vat_particulier
        $this->createTaxCategory($manager);

        // create tax rate 20%; 10%; 5.5%; 2.1%;
        $this->createTaxRate($manager);
    }

    public function createTaxCategory($manager)
    {
        $categories = [
            'vat_normal',
            /*'vat_intermediaire',
            'vat_reduit',
            'vat_particulier'*/
        ];

        foreach ($categories as $category) {
            $taxCategory = $this->container->get('sylius.factory.tax_category')->createNew();
            $taxCategory->setCode($category);
            $taxCategory->setName(ucfirst($category));

            $this->container->get('sylius.repository.tax_category')->add($taxCategory);

            $manager->persist($taxCategory);

            $this->addReference($category, $taxCategory);
        }

        $manager->flush();

        return;
    }

    public function createTaxRate($manager)
    {
        $rates = [
            'vat_normal' => 20,
            /*'vat_intermediaire' => 10,
            'vat_reduit' => 5.5,
            'vat_particulier' => 2.1*/
        ];

        foreach ($rates as $key => $rate) {
            $taxRate = $this->container->get('sylius.factory.tax_rate')->createNew();
            $taxRate->setCode((string) $rate . '%');
            $taxRate->setName((string) $rate . '%');
            $taxRate->setAmount($rate / 100);
            $taxRate->setCalculator('default');

            $zone = $this->container->get('sylius.repository.zone')->findOneBy(['code' => 'FR-France']);
            if (!$zone) {
                $zone = $this->container->get('sylius.repository.zone')->findOneBy(['code' => 'FR-Paris']);
            }

            $taxRate->setZone($zone);

            $taxCategory = $this->container->get('sylius.repository.tax_category')->findOneBy(['code' => $key]);
            $taxRate->setCategory($taxCategory);

            $this->container->get('sylius.repository.tax_rate')->add($taxRate);

            $manager->persist($taxRate);
        }

        $manager->flush();

        return;
    }
}
