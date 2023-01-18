<?php

namespace App\Twig;

use Twig\Extension\AbstractExtension;
use Twig\TwigFunction;
use Psr\Container\ContainerInterface;

class OrderExtension extends AbstractExtension
{
    public function __construct(private ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function getFunctions()
    {
        return [
            new TwigFunction('getRealTaxInclued', [$this, 'getRealTaxInclued']),
        ];
    }

    public function getRealTaxInclued($order)
    {
        $orderFromDb = $this->container->get('sylius.repository.order')->findOneBy(["id" => $order->getId()]);
        dump($orderFromDb->getTaxExcludedTotal());
        dump($order->getTaxExcludedTotal());
        return $order;
    }
}
