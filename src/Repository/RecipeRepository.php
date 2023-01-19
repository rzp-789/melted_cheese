<?php

namespace App\Repository;

use App\Entity\Recipe;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Sylius\Component\Resource\Repository\RepositoryInterface;
use Sylius\Component\Resource\Model\ResourceInterface;

/**
 * @extends ServiceEntityRepository<Newsletter>
 *
 */
class RecipeRepository extends ServiceEntityRepository implements RepositoryInterface
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Recipe::class);
    }

    public function createPaginator(array $criteria = [], array $sorting = []): iterable
    {
        return [];
    }

    public function add(ResourceInterface $resource): void
    {
        return ;
    }

    public function remove(ResourceInterface $resource): void
    {
        return ;
    }
}
