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

namespace App\Form\Extensions;

use Sylius\Bundle\ResourceBundle\Form\Type\AbstractResourceType;
use Symfony\Component\Form\DataMapperInterface;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\AbstractTypeExtension;
use Sylius\Bundle\OrderBundle\Form\Type\CartItemType;

class CartItemTypeExtension extends AbstractTypeExtension
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        // if(!empty($options['product']) && $options['product']->getAttributeByCodeAndLocale('cuttype')->getValue()) {
        //     $builder
        //     ->add('quantity', IntegerType::class, [
        //         'attr' => ['min' => 100, 'max' => 30000],
        //         'label' => 'sylius.ui.quantity_cuttype'

        //     ]);
        // }else {
        //     $builder
        //     ->add('quantity', IntegerType::class, [
        //         'attr' => ['min' => 1, 'max' => 99],
        //         'label' => 'sylius.ui.quantity_unit'
        //     ]);
        // }

    }

    public static function getExtendedTypes(): iterable
    {
        return [CartItemType::class];
    }
}