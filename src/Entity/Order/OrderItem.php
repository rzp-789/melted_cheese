<?php

declare(strict_types=1);

namespace App\Entity\Order;

use Doctrine\ORM\Mapping as ORM;
use Sylius\Component\Core\Model\OrderItem as BaseOrderItem;

/**
 * @ORM\Entity
 * @ORM\Table(name="sylius_order_item")
 */
class OrderItem extends BaseOrderItem
{
    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $weight;

    /**
     * Get the value of weight
     */ 
    public function getWeight()
    {
        return $this->weight;
    }

    /**
     * Set the value of weight
     *
     * @return  self
     */
    public function setWeight(?float $weight)
    {
        $this->weight = $weight;

        return $this;
    }

    public function getPriceByWeight(): int
    {
        return $this->weight * $this->unitPrice;
    }
}
