<?php 

declare(strict_types=1);

namespace App\Service\Manager;

use Psr\Container\ContainerInterface;
use App\Entity\Newsletter;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\User\ShopUser;

class NewsletterManager
{
    private const NEWSLETTER_CUSTOMER_GROUP = "newsletter";

    public function __construct(
        ContainerInterface $container,
        EntityManagerInterface $entityManagerInterface
        )
    {
        $this->container = $container;
        $this->manager = $entityManagerInterface;
    }

    public function createNewsletter($email, $user)
    {
        // try{
            $newsletter = new Newsletter();
            $newsletter->setEmail($email);
            $newsletter->setCreatedAt(new \DateTimeImmutable('now'));

            if($user instanceof ShopUser) {
                $customer = $user->getCustomer();
                dump($user->getCustomer());
                $newsletter->setCustomer($customer);
                $customerGroup = $this->container->get('sylius.repository.sylius_customer_group')->findOneBy(['code' => self::NEWSLETTER_CUSTOMER_GROUP]);
                $customer->setGroup($customerGroup);
                $this->manager->persist($customer);
            }

            $this->manager->persist($newsletter);
            $this->manager->flush();

            $return = true;
//         }catch(\Exception $e){
// dump($e->getMessage());
//             $return = false;
//         }


        return $return;
    }


}