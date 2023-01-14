<?php

declare(strict_types=1);

namespace App\DataFixtures;

use App\Entity\Product\ProductTaxon;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Psr\Container\ContainerInterface;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class ProductFixtures extends Fixture implements DependentFixtureInterface
{
    private const PRODUCT_ATTRIBUTES = [
        "Refining",
        "Season"
    ];
    private const PRODUCTS = [
        "cheep-cheese" => [
            0 => [
                "name" => "Fromage de brebis basque",
                "description" => "Un fromage qui provient du coeur du pays basque.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ],
            1 => [
                "name" => "Fromage de brebis Ossau Iraty",
                "description" => "un fromage de brebis pure souche Ossau Iraty.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ]
        ],
        "cow-cheese" => [
            0 => [
                "name" => "Fromage de vache canadien",
                "description" => "Un fromage de vache du canada.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ],
            1 => [
                "name" => "Fromage de vache turc",
                "description" => "Un fromage de vache turc.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ]
        ],
        "goat-cheese" => [
            0 => [
                "name" => "Fromage de chèvre de rocamadour",
                "description" => "Un fromage de chèvre qui provient de rocamadour.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ],
            1 => [
                "name" => "Fromage de chèvre frais",
                "description" => "Un fromage rafraîchissant l'été.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ]
        ],
        "blue-cheese" => [
            0 => [
                "name" => "Fromage de bleu d'auvergne",
                "description" => "Un fromage bleu authentique d'Auvergne.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ],
            1 => [
                "name" => "Fromage de bleu de roquefort",
                "description" => "Un fromage de bleu de roquefort pour agrémenter vos lasagnes.",
                "attributes" => [
                    "refining" => "6mois",
                    "season" => "Printemps/Eté"
                ]
            ]
        ],
    ];
    private ContainerInterface $container;

    private SluggerInterface $slugger;

    public function __construct(ContainerInterface $container, SluggerInterface $slugger)
    {
        $this->container = $container;
        $this->slugger = $slugger;
    }

    public function getDependencies()
    {
        return [
            TaxonFixtures::class,
            ChannelFixtures::class,
        ];
    }

    public function load(ObjectManager $manager)
    {
        $taxonRepository = $this->container->get('sylius.repository.taxon');
        $taxons = $taxonRepository->findBy(['level' => 2]);

        $channel = $this->getReference(ChannelFixtures::CHANNEL_REFERENCE);

        $this->createProductAttributes($manager);
        // Create cheeses
        foreach($taxons as $taxon){
            foreach(self::PRODUCTS as $mainTaxon => $products) {
                if($taxon->getCode() === $mainTaxon) {
                    foreach($products as $productArray) {
                        $taxon = $taxonRepository->findOneBy(['code' => $mainTaxon]);
                        $this->createProduct($manager, $taxon, $channel, $productArray);
                    }
                }
            }
        }

    }

    public function createProduct($manager, $taxon, $channel, $productArray)
    {
        $productFactory = $this->container->get('sylius.factory.product');
        $date = new \DateTime('now');

        $slugifiedName = strtolower($this->slugger->slug($productArray['name'])->toString());

        $product = $productFactory->createNew();
        $product->setName($productArray['name']);
        $product->setCurrentLocale('fr_FR');
        $product->setSlug($slugifiedName);
        $product->setCode($slugifiedName);
        $product->setMainTaxon($taxon);
        $product->addChannel($channel);


        //Add Image
        $imagePath = "public/media/cheese/".$slugifiedName.".jpeg";
        $uploadedImage = new UploadedFile($imagePath, basename($imagePath));

        /** @var ImageInterface $productImage */
        $productImage = $this->container->get('sylius.factory.product_image')->createNew();
        $productImage->setFile($uploadedImage);
        // $productImage->setType(end($image) ?: null);
    
        $this->container->get('sylius.image_uploader')->upload($productImage);
    
        $product->addImage($productImage);

        //Get Translation
        $productTranslation = $product->getTranslation('fr_FR');

        // add cms elements
        $productTranslation->setDescription($productArray['description'].$productArray['description']);
        $productTranslation->setSlug($slugifiedName);
        $productTranslation->setShortDescription($productArray['description']);


        // set productTaxon
        $productTaxon = new ProductTaxon();
        $productTaxon->setTaxon($taxon);
        $productTaxon->setPosition(1);
        $product->addProductTaxon($productTaxon);

        // Set Product Attributes
        $attributeValueFactory = $this->container->get('sylius.factory.product_attribute_value');
        foreach($productArray['attributes'] as $attribute => $value) {
            $newAttribute = $attributeValueFactory->createNew();
            $attributeRepository = $this->container->get('sylius.repository.product_attribute');
            $currentAttribute = $attributeRepository->findOneBy(['code' => $attribute]);
            $newAttribute->setAttribute($currentAttribute);
            $newAttribute->setValue($value);
            $product->addAttribute($newAttribute);

        }

        $manager->persist($productTranslation);
        $manager->persist($productTaxon);
        $manager->persist($product);

        $manager->flush();
    }

    public function createProductAttributes($manager)
    {
        $productAttributeFactory = $this->container->get('sylius.factory.product_attribute');
        foreach(self::PRODUCT_ATTRIBUTES as $productAttributeName) {
            $productAttribute = $productAttributeFactory->createTyped('text');

            $productAttribute->setName($productAttributeName);
            $productAttribute->setCode(strtolower($this->slugger->slug($productAttributeName)->toString()));
            $this->container->get('sylius.repository.product_attribute')->add($productAttribute);
        }

    }

}
