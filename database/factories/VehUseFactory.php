<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class VehUseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'order_id' => $this->faker->numberBetween(1,10),
            'type' => $this->faker->randomElement(['fuel','repair','other']),
            'spend' => $this->faker->numberBetween(1000,10000),
            'fuel'=>$this->faker->numberBetween(1000,5000),
        ];
    }
}
