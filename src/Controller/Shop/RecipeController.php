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
use App\Service\Manager\NewsletterManager;
use Symfony\Contracts\Translation\TranslatorInterface;
use App\Repository\RecipeRepository;

class RecipeController extends AbstractController
{

    public function __construct(private RecipeRepository $recipeRepository)
    {
        $this->recipeRepository = $recipeRepository;
    }

    public function index(Request $request): Response
    {
        $recipes = $this->recipeRepository->findAll();
        return new Response($this->renderView('@SyliusShop/Recipe/index.html.twig', [
            'recipes' => $recipes
        ]));

    }

    public function show(Request $request, string $title): Response
    {
        $recipe = $this->recipeRepository->findOneBy(['title' => $title]);

        return new Response($this->renderView('@SyliusShop/Recipe/show.html.twig', [
            'title' => $recipe->getTitle(),
            'content' => $recipe->getContent()
        ]));

    }
}
