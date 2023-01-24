<?php

declare(strict_types=1);

namespace App\EventListener;


use Sylius\Bundle\ResourceBundle\Event\ResourceControllerEvent;
use Doctrine\ORM\EntityManagerInterface;
use Psr\Container\ContainerInterface;

/**
 * OrderItemListener
 */
final class AddNewsletterPromotionListener
{
    private const NEWSLETTER_CUSTOMER_GROUP = "newsletter";

    public function __construct(
        private EntityManagerInterface $entityManager,
        private ContainerInterface $container
        )
    {
        $this->entityManager = $entityManager;
        $this->container = $container;

    }


    public function addNewsletterPromotion(ResourceControllerEvent $ressourceEvent)
    {
        $customer = $ressourceEvent->getSubject()->getCustomer();
        $newsletter = $this->container->get('app.repository.newsletter')->findOneBy(['email' => $customer->getEmail()]);

        if($newsletter) {
            $customerGroup = $this->container->get('sylius.repository.customer_group')->findOneBy(['code' => self::NEWSLETTER_CUSTOMER_GROUP]);
            $customer->setGroup($customerGroup);

            $this->entityManager->persist($customer);
            $this->entityManager->flush();
        }

    }

}
