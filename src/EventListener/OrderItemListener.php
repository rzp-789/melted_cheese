<?php

declare(strict_types=1);

namespace App\EventListener;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Sylius\Bundle\ResourceBundle\Event\ResourceControllerEvent;
use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Order\Modifier\OrderItemQuantityModifierInterface;
use Sylius\Component\Order\Modifier\OrderModifierInterface;
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
        $attributeCutType = $product->getAttributeByCodeAndLocale('cuttype')->getValue();
        $order = $productItem->getOrder();

        if(!empty($attributeCutType)) {
            if(empty($productItem->getWeight())) {
                $productItem->setWeight($productItem->getQuantity()/1000);
                $productItem->setUnitPrice(intval($productvariant->getChannelPricings()->getValues()[0]->getPrice() * $productItem->getWeight()));
                $productItem->setImmutable(true);
                $this->quantityModifier->modify($productItem, 1);
                $this->entityManager->persist($productItem);
                $this->entityManager->flush();
            }

            $this->orderProcessor->process($order);
        }
    }
}