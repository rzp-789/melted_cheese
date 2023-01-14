<?php

declare(strict_types=1);

namespace App\DataFixtures;

use App\Entity\User\AdminUser;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Sylius\Component\Core\Model\AdminUserInterface;

class AdminUserFixtures extends Fixture
{
    private $faker;

    public function __construct()
    {
        $this->faker = Factory::create();
    }

    public function load(ObjectManager $manager)
    {
        // Reset data
        /*$connection = $manager->getConnection();
        $connection->query('DELETE FROM sylius_admin_user');
        $connection->exec('ALTER TABLE sylius_admin_user AUTO_INCREMENT = 1');*/

        // Create admin users
        $users = $this->createUsers($manager);
    }

    public function createUsers(ObjectManager $manager)
    {
        $user = new AdminUser();
        $user->setEmail('adrien@gmail.com');
        $user->setUsername('adrien');
        $user->setPlainPassword('azerty');
        $user->setEnabled(true);
        $user->addRole(AdminUserInterface::DEFAULT_ADMIN_ROLE);
        $user->setLocaleCode('fr_FR');
        $user->setFirstName('Adrien');
        $user->setLastName('PEREZ');
        $manager->persist($user);

        $manager->flush();
    }
}
