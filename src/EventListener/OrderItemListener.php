<?php

declare(strict_types=1);

namespace App\EventListener;


use Sylius\Bundle\ResourceBundle\Event\ResourceControllerEvent;
use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Order\Modifier\OrderItemQuantityModifierInterface;
use Sylius\Component\Order\Processor\OrderProcessorInterface;

/**
 * OrderItemListener
 */
final class OrderItemListener
{
    public function __construct(
        private EntityManagerInterface $entityManager,
        private OrderProcessorInterface $orderProcessor,
        private OrderItemQuantityModifierInterface $quantityModifier
        )
    {
        $this->entityManager = $entityManager;
        $this->orderProcessor = $orderProcessor;
        $this->quantityModifier = $quantityModifier;

    }


    public function reCalculTotalForProductCutTypeAfterFlush(ResourceControllerEvent $ressourceEvent)
    {

        $productItem = $ressourceEvent->getSubject();
        $product = $ressourceEvent->getSubject()->getVariant()->getProduct();
        $productvariant = $ressourceEvent->getSubject()->getVariant();
        $attributeCutType = $product->hasAttributeByCodeAndLocale('cuttype') ? $product->getAttributeByCodeAndLocale('cuttype')->getValue() : false;
        $order = $productItem->getOrder();

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
