<?php

declare(strict_types=1);

namespace App\Command;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use Sylius\Component\Channel\Context\ChannelContextInterface;
use Psr\Container\ContainerInterface;

class testCommand extends Command
{
    protected static $defaultName = 'cheese:test';

    public function __construct(private ContainerInterface $container, private EntityManagerInterface $objectManager)
    {
        parent::__construct();

        $this->container = $container;
        $this->objectManager = $objectManager;
    }

    protected function configure()
    {
        $this
            ->setDescription('commande test')
            ->setHelp('This command is created to test')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $io = new SymfonyStyle($input, $output);
        $io->title('Creation of Homepage');
        $io->writeln(['<info>Creation of Footer</info>']);
        $variantsRepository = $this->container->get('sylius.repository.product_variant');
        $productRepository = $this->container->get('sylius.repository.product');

        //dump($variantsRepository->findAll());
        $product = $productRepository->findOneby(['code' => 'fromage-de-bleu-de-roquefort']);
        $product->getVariants()->getValues()[0]->setcurrentLocale('fr_FR');
        $this->objectManager->persist($product);
        $this->objectManager->flush();
        
        dump($product->getVariants()->getValues()[0]);
        die;
        return 1;
    }

}
