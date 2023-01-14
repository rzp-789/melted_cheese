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

namespace App\Controller\Shop;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;

class NewsletterController extends AbstractController
{
    // private ContainerInterface $container;
    // public function __construct(ContainerInterface $container)
    // {
    //     $this->container = $container;
    // }

    public function subscribe(Request $request): Response
    {
        dump($request->request->all());
        dd('stop');
        // $currentBoat = $this->container->get('app.repository.exploris_boat')->findOneById($boatId);

        // return $this->render('@SyliusShop/ExplorisBoat/_show.html.twig', [
        //     'boat' => $currentBoat
        // ]);
        return new JsonResponse();

    }
}
