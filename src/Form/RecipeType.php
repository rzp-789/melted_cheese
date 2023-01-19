<?php

namespace App\Form;

use Sylius\Bundle\ResourceBundle\Form\Type\AbstractResourceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use MonsieurBiz\SyliusRichEditorPlugin\Form\Type\RichEditorType;

class RecipeType extends AbstractResourceType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class)
            ->add('content', RichEditorType::class, [
                'label' => 'Cms de la recette',
                'tags' => ['default']
            ])
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'app_recipe';
    }
}