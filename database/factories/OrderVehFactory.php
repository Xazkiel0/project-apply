<?php

namespace Database\Factories;

use App\Models\Driver;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class OrderVehFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'driver_id' => $this->faker->numberBetween(1,10),
            'tambang' => 'Tambang '.$this->faker->numberBetween(1,6),
            'approver_id' => $this->faker->numberBetween(1,10),
            'progress' => $this->faker->numberBetween(0,3),
            'rent_id' => $this->faker->numberBetween(1,10),
            'vehicle_id' => $this->faker->numberBetween(1,10),
        ];
    }
}
