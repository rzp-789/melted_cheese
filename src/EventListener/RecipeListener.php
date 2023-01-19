<?php

declare(strict_types=1);

namespace App\EventListener;

use Doctrine\ORM\EntityManagerInterface;
use Sylius\Bundle\ResourceBundle\Event\ResourceControllerEvent;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RequestStack;
use Psr\Container\ContainerInterface;

/**
 * Class RecipeListener.
 */
final class RecipeListener
{
    private Request $request;

    public function __construct(
        RequestStack $requestStack,
        EntityManagerInterface $em,
        private ContainerInterface $container
    ) {
        if ($requestStack->getCurrentRequest() instanceof Request) {
            $this->request = $requestStack->getCurrentRequest();
        }

        $this->em = $em;

    }

    public function onRecipePostCreate(ResourceControllerEvent $resourceEvent)
    {
        $this->manageData($resourceEvent);

    }

    public function onRecipePostUpdate(ResourceControllerEvent $resourceEvent)
    {
        $this->manageData($resourceEvent);
    }

    public function onRecipePostDelete(ResourceControllerEvent $ressourceEvent)
    {
        $recipe = $ressourceEvent->getSubject();
        $this->em->remove($recipe);
        $this->em->flush();
    }

    public function manageData($resourceEvent) 
    {
        $recipe = $resourceEvent->getSubject();

        $this->em->persist($recipe);
        $this->em->flush();
    }

}
