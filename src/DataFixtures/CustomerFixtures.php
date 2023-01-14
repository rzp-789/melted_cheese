<?php

namespace App\DataFixtures;

use App\Entity\Customer\Customer;
use App\Entity\User\ShopUser;
use App\Entity\Addressing\Address;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Psr\Container\ContainerInterface;
use Faker\Factory;
use Doctrine\Persistence\ObjectManager;

class CustomerFixtures extends Fixture
{

    public const CUSTOMER_REFERENCE = 'meltedCheese-client@meltedcheese.com';

    private ContainerInterface $container;

    public function __construct(ContainerInterface $container) {
        $this->faker = Factory::create('fr_FR');
        $this->container = $container;
    }

    public function load(ObjectManager $manager): void
    {
        $customer = $this->container->get('sylius.factory.customer')->createNew();
        $email = self::CUSTOMER_REFERENCE;
        $customer->setEmail($email);
        $customer->setFirstName($this->faker->firstName);
        $customer->setLastName($this->faker->lastName);
        $customer->setSubscribedToNewsletter(true);
        $customer->setPhoneNumber($this->faker->phoneNumber);

        $this->container->get('sylius.repository.customer')->add($customer);
        $this->addReference($email, $customer);

        $this->createShopUser($manager, $customer);
        $this->createAddress($manager, $customer);
    }

    public function createShopUser($manager, $customer){
        $user = $this->container->get('sylius.factory.shop_user')->createNew();
        $user->setCustomer($customer);
        $user->setEnabled(true);
        $user->setVerifiedAt(new \DateTime('now'));
        $user->setPlainPassword('azerty');
        $this->container->get('sylius.repository.shop_user')->add($user);
    }

    public function createAddress($manager, $customer){
        $address = $this->container->get('sylius.factory.address')->createNew();

        $address->setFirstName($customer->getFirstName());
        $address->setLastName($customer->getLastName());
        $address->setCountryCode('FR');
        $address->setCity($this->faker->city);
        $address->setStreet($this->faker->streetName);
        $address->setPostcode($this->faker->postcode);
        $customer->addAddress($address);
        $customer->setDefaultAddress($address);

        $manager->persist($address);
        $manager->persist($customer);

        $manager->flush();
    }

}
