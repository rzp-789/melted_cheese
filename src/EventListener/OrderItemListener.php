<?php

declare(strict_types=1);

namespace App\EventListener;


use Sylius\Bundle\ResourceBundle\Event\ResourceControllerEvent;
use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Order\Modifier\OrderItemQuantityModifierInterface;
use Sylius\Component\Order\Processor\OrderProcessorInterface;
use Psr\Container\ContainerInterface;

/**
 * OrderItemListener
 */
final class OrderItemListener
{
    public function __construct(
        private EntityManagerInterface $entityManager,
        private OrderProcessorInterface $orderProcessor,
        private OrderItemQuantityModifierInterface $quantityModifier,
        private ContainerInterface $container
        )
    {
        $this->entityManager = $entityManager;
        $this->orderProcessor = $orderProcessor;
        $this->quantityModifier = $quantityModifier;
        $this->container = $container;

    }


    public function reCalculCartAfterFlush(ResourceControllerEvent $ressourceEvent)
    {
        $order = $this->reCalculCutTypeProduct($ressourceEvent);

        $this->orderProcessor->process($order);

        $this->entityManager->persist($order);
        $this->entityManager->flush();
    }

    public function reCalculCutTypeProduct($ressourceEvent)
    {
        // Calcul For Particular product
        $product = $ressourceEvent->getSubject()->getVariant()->getProduct();
        $productItem = $ressourceEvent->getSubject();
        $productvariant = $ressourceEvent->getSubject()->getVariant();
        $order = $productItem->getOrder();

        $attributeCutType = $product->hasAttributeByCodeAndLocale('cuttype') ? $product->getAttributeByCodeAndLocale('cuttype')->getValue() : false;
        if(!empty($attributeCutType)) {
            if(empty($productItem->getWeight())) {
                $productItem->setWeight($productItem->getQuantity()/1000);
                $productItem->setUnitPrice(intval($productvariant->getChannelPricings()->getValues()[0]->getPrice() * $productItem->getWeight()));
                $productItem->setImmutable(true);
                // Set quantity to 1 need to manage it to recalcul the stock and use weight instead quantity for product cuttype
                $this->quantityModifier->modify($productItem, 1);
                $this->entityManager->persist($productItem);
                $this->entityManager->flush();
                $this->orderProcessor->process($order);
            }
        }

        $this->orderProcessor->process($order);
        $this->entityManager->persist($order);
        $this->entityManager->flush();

    }

}
