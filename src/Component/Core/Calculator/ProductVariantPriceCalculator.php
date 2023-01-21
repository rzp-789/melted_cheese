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

namespace App\Component\Core\Calculator;

use Sylius\Component\Core\Exception\MissingChannelConfigurationException;
use Sylius\Component\Core\Model\ProductVariantInterface;
use Sylius\Component\Core\Calculator\ProductVariantPricesCalculatorInterface;
use Webmozart\Assert\Assert;

final class ProductVariantPriceCalculator implements ProductVariantPricesCalculatorInterface
{
    public function calculate(ProductVariantInterface $productVariant, array $context): int
    {
        Assert::keyExists($context, 'channel');

        $channelPricing = $productVariant->getChannelPricingForChannel($context['channel']);

        if (null === $channelPricing || $channelPricing->getPrice() === null) {
            throw MissingChannelConfigurationException::createForProductVariantChannelPricing($productVariant, $context['channel']);
        }

        $returnPrice = $$productVariant->getProduct()->hasAttributeByCodeAndLocale('cuttype') ? $channelPricing->getPrice() / 1000 : $channelPricing->getPrice();
        return $returnPrice;
    }

    /**
     * @throws \InvalidArgumentException|MissingChannelConfigurationException
     */
    public function calculateOriginal(ProductVariantInterface $productVariant, array $context): int
    {
        Assert::keyExists($context, 'channel');

        $channelPricing = $productVariant->getChannelPricingForChannel($context['channel']);

        if (null === $channelPricing) {
            throw MissingChannelConfigurationException::createForProductVariantChannelPricing($productVariant, $context['channel']);
        }

        if (null !== $channelPricing->getOriginalPrice()) {

            $returnPrice = $$productVariant->getProduct()->hasAttributeByCodeAndLocale('cuttype') ? $channelPricing->getPrice() / 1000 : $channelPricing->getPrice();
        return $returnPrice;

        }

        if ($channelPricing->getPrice() !== null) {

            $returnPrice = $$productVariant->getProduct()->hasAttributeByCodeAndLocale('cuttype') ? $channelPricing->getPrice() / 1000 : $channelPricing->getPrice();
        return $returnPrice;
        }

        throw MissingChannelConfigurationException::createForProductVariantChannelPricing($productVariant, $context['channel']);
    }
}