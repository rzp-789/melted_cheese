<?php

declare(strict_types=1);

namespace App\Menu;

use Sylius\Bundle\UiBundle\Menu\Event\MenuBuilderEvent;

final class AdminMenuListener
{
    public function addAdminMenuItems(MenuBuilderEvent $event): void
    {
        $menu = $event->getMenu();
        // Add rows here


        $menu->getChild('catalog')
            ->addChild('recipe', ['route' => 'app_admin_recipe_index'])
            ->setLabel('Recette')
            ->setLabelAttribute('icon', 'world');

    }

}
