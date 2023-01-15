<?php

declare(strict_types=1);

namespace App\DataFixtures;

use App\Entity\Taxonomy\Taxon;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Psr\Container\ContainerInterface;
use Symfony\Component\String\Slugger\SluggerInterface;

class TaxonFixtures extends Fixture
{
    public const MAIN_TAXON = " Categorie";
    public const TAXON_LEVEL_1 = [
        "cutcheese" => [
            "name" => "Cut Cheese",
            "description" => "Fromage à la coupe",
            "taxon_level" => 1
        ],
        "creamcheese" => [
            "name" => "Cream Cheese",
            "description" => "Fromage crémeux ",
            "taxon_level" => 1
        ]
    ];
    public const TAXON_LEVEL_2 = [
        "cutcheese" => [
            0 => [
                "name" => "Cheep Cheese",
                "description" => "Fromage de brebis",
                "taxon_level" => 2
            ],
            1 => [
                "name" => "Cow Cheese",
                "description" => "Fromage de vache",
                "taxon_level" => 2
            ]
        ],
        "creamcheese" => [
            0 => [
                "name" => "Goat Cheese",
                "description" => "Fromage de chèvre",
                "taxon_level" => 2
            ],
            1 => [
                "name" => "Blue Cheese",
                "description" => "Bleu d'auvergne",
                "taxon_level" => 2
            ]
        ]
    ];

    private ContainerInterface $container;

    public function __construct(ContainerInterface $container, private SluggerInterface $slugger)
    {
        $this->container = $container;
    }

    public function load(ObjectManager $manager)
    {
        $mainTaxon = $this->createMainTaxon($manager);

        foreach(self::TAXON_LEVEL_1 as $key => $taxonLevel1) {
            $taxonCreated = $this->createTaxons($manager, $taxonLevel1, $mainTaxon);
            foreach(self::TAXON_LEVEL_2 as $key2 => $taxonsLevel2) {
                if($key === $key2) {
                    foreach($taxonsLevel2 as $taxonLevel2) {
                        $this->createTaxons($manager, $taxonLevel2, $taxonCreated);
                    }
                }
            }
        }

        $this->addMenuTaxonOnChannel($manager);
    }

    public function createMainTaxon($manager)
    {
        $taxonFactory = $this->container->get('sylius.factory.taxon');
        $mainTaxon = $taxonFactory->createNew();
        $mainTaxon->setName('Category');
        $mainTaxon->setName('Category');
        $mainTaxon->setCode('MENU_CATEGORY');
        $mainTaxon->setSlug('category');
        $mainTaxon->setLevel(0);

        $manager->persist($mainTaxon);

        $manager->flush();

        return $mainTaxon;
    }

    public function createTaxons(ObjectManager $manager, $taxonArray, $parentTaxon)
    {
        $slugifiedName = strtolower($this->slugger->slug($taxonArray['name'])->toString());

        $taxonFactory = $this->container->get('sylius.factory.taxon');
        $taxon = $taxonFactory->createNew();
        $taxon->setName($taxonArray['name']);
        $taxon->setDescription($taxonArray['description']);
        $taxon->setCurrentLocale('fr_FR');
        $taxon->setSlug($slugifiedName);
        $taxon->setCode($slugifiedName);
        $taxon->setLevel($taxonArray['taxon_level']);
        $taxon->setParent($parentTaxon);

        // Get Translation
        $taxonTranslation = $taxon->getTranslation('fr_FR');
        $taxonTranslation->setSlug($slugifiedName);
        $taxonTranslation->setName($taxonArray['description']);

        $taxon->setEnabled(true);

        $manager->persist($taxonTranslation);
        $manager->persist($taxon);

        $manager->flush();

        return $taxon;
    }

    public function addMenuTaxonOnChannel($manager)
    {
        $taxonRepository = $this->container->get('sylius.repository.taxon');
        $menuTaxon = $taxonRepository->findOneBy(['level' => 0]);
        $channel = $this->getReference(ChannelFixtures::CHANNEL_REFERENCE);

        $channel->setMenuTaxon($menuTaxon);

        $manager->persist($channel);

        $manager->flush();
    }

}
