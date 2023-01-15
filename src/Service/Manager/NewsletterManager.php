<?php 

declare(strict_types=1);

namespace App\Service\Manager;

use Psr\Container\ContainerInterface;
use App\Entity\Newsletter;
use Doctrine\ORM\EntityManagerInterface;

class NewsletterManager
{
    public function __construct(
        ContainerInterface $container,
        EntityManagerInterface $entityManagerInterface
        )
    {
        $this->container = $container;
        $this->manager = $entityManagerInterface;
    }

    public function createNewsletter($email)
    {
        try{
            $newsletter = new Newsletter();
            $newsletter->setEmail($email);
            $newsletter->setCreatedAt(new \DateTimeImmutable('now'));

            $this->manager->persist($newsletter);
            $this->manager->flush();

            $return = true;
        }catch(\Exception $e){

            $return = false;
        }


        return $return;
    }


}