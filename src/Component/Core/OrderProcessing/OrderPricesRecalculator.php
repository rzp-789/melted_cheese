<?php

/*
 * This file is part of the Sylius package.
 *
 * (c) Paweł Jędrzejewski
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

declare(strict_types=1);

namespace App\Component\Core\OrderProcessing;

use Sylius\Component\Core\Calculator\ProductVariantPriceCalculatorInterface;
use Sylius\Component\Core\Calculator\ProductVariantPricesCalculatorInterface;
use Sylius\Component\Core\Model\OrderInterface;
use Sylius\Component\Order\Model\OrderInterface as BaseOrderInterface;
use Sylius\Component\Order\Processor\OrderProcessorInterface;
use Webmozart\Assert\Assert;
use Sylius\Component\Order\Modifier\OrderItemQuantityModifierInterface;

final class OrderPricesRecalculator implements OrderProcessorInterface
{
    public function __construct(private ProductVariantPriceCalculatorInterface $productVariantPriceCalculator, private OrderItemQuantityModifierInterface $quantityModifier)
    {
        $this->productVariantPriceCalculator = $productVariantPriceCalculator;
        $this->quantityModifier = $quantityModifier;

    }

    public function process(BaseOrderInterface $order): void
    {
        /** @var OrderInterface $order */
        Assert::isInstanceOf($order, OrderInterface::class);

        if (OrderInterface::STATE_CART !== $order->getState()) {
            return;
        }

        $channel = $order->getChannel();

        foreach ($order->getItems() as $item) {
            $cutType = $item->getProduct()->isCutTypeProduct();

            if ($item->isImmutable() && !$cutType) {
                continue;
            }

            if($cutType){
                $this->reCalculForCutTypeProduct($item);
            }else{
                $item->setUnitPrice($this->productVariantPriceCalculator->calculate(
                    $item->getVariant(),
                    ['channel' => $channel],
                ));

                if ($this->productVariantPriceCalculator instanceof ProductVariantPricesCalculatorInterface) {
                    $item->setOriginalUnitPrice($this->productVariantPriceCalculator->calculateOriginal(
                        $item->getVariant(),
                        ['channel' => $channel],
                    ));
                }
            }

        }
    }

    public function reCalculForCutTypeProduct($item)
    {
        // Condition to avoid multi call function on same event
        if($item->getQuantity() != 1) {
            $weight = $item->getQuantity()/1000;
            // Condition if product is already selected and modify weight
            if(!empty($item->getWeight()) ) {
                $weight = $item->getWeight() + $weight - 0.001;
            }
            $item->setWeight($weight);
            $item->setUnitPrice(intval($item->getVariant()->getChannelPricings()->getValues()[0]->getPrice() * $item->getWeight()));
            $item->setImmutable(true);
            $this->quantityModifier->modify($item, 1);
        }

    }
}
