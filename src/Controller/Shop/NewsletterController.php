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

class NewsletterController extends AbstractController
{

    public function __construct(private NewsletterManager $newsletterManager, private TranslatorInterface $translation)
    {
        $this->newsletterManager = $newsletterManager;
        $this->translation = $translation;
    }

    public function subscribe(Request $request): Response
    {
        $email = $request->request->get("newsletter-email");
        if(!empty($email)) {
            $return = $this->newsletterManager->createNewsletter($email, $this->getUser());
            if($return) {
                $this->addFlash('success', $this->translation->trans('sylius.newsletter.success'));
            }else {
                $this->addFlash('info', $this->translation->trans('sylius.newsletter.error_double'));
            }
        } else {
            $this->addFlash('error', $this->translation->trans('sylius.newsletter.error'));
        }

        return !empty($request->headers->get('referer')) ? $this->redirect($request->headers->get('referer')) : $this->redirectToRoute('sylius_homepage');

    }
}
