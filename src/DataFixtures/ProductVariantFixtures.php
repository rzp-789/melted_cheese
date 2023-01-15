<?php

declare(strict_types=1);

namespace App\DataFixtures;

use App\Entity\Channel\ChannelPricing;
use App\Entity\Product\ProductAttributeValue;
use App\Entity\Product\ProductTaxon;
use App\Entity\Product\ProductVariant;
use App\Entity\Taxonomy\Taxon;
use App\Entity\Product\Product;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Psr\Container\ContainerInterface;
use Behat\Testwork\ServiceContainer\Extension;

class ProductVariantFixtures extends Fixture implements DependentFixtureInterface
{
    const PRICE = 1500000;

    private ContainerInterface $container;

    public function __construct(
        ContainerInterface $container, 
        )
    {
        $this->container = $container;
        $this->faker = Factory::create('fr_FR');
    }

    public function getDependencies()
    {
        return [
            ProductFixtures::class,
            ShopConfigurationFixtures::class,
            VatFixtures::class,
        ];
    }

    public function load(ObjectManager $manager)
    {
        $productRepository = $this->container->get('sylius.repository.product');
        $products = $productRepository->findAll();
        $channel = $this->getReference(ShopConfigurationFixtures::CHANNEL_REFERENCE);
        $taxCategory = $this->getReference(VatFixtures::VAT_REFERENCE);

        foreach($products as $product){
            $this->createProductVariant($manager, $product, $channel, $taxCategory);

        }
    }

    public function createProductVariant($manager, $product, $channel, $taxCategory)
    {
        $productVariant = new ProductVariant();
        $productVariant->setProduct($product);
        $productVariant->setCode('name '.$product->getSlug());
        $productVariant->setCode('variant '.$product->getSlug());
        $productVariant->setCurrentLocale('fr_FR');
        $productVariant->setOnHold(0);
        $productVariant->setOnHand(100);
        if($product->getAttributeByCodeAndLocale('cuttype')->getValue()) {
            $productVariant->setOnHand(100000);
        }
        $productVariant->setTracked(true);
        $productVariant->setPosition(1);
        $productVariant->setShippingRequired(false);
        $productVariant->setVersion(1);
        $productVariant->setEnabled(true);
        $productVariant->setCreatedAt(new \DateTime('now'));
        $productVariant->setTaxCategory($taxCategory);

        $channelPricing = new ChannelPricing();
        $channelPricing->setProductVariant($productVariant);
        $channelPricing->setChannelCode($channel->getCode());
        $channelPricing->setPrice(random_int(500,2500));
        //$channelPricing->setOriginalPrice(random_int($channelPricing->getPrice(),255000));

        $productVariant->addChannelPricing($channelPricing);
        $product->addVariant($productVariant);

        $manager->persist($productVariant);
        $manager->persist($channelPricing);
        $manager->persist($product);

        $manager->flush();
    }
}
