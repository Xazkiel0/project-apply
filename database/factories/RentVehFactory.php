<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class RentVehFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'owner' => $this->faker->lastName(),
            'rent_till' => date_add(now(), date_interval_create_from_date_string(rand(1, 20) . " days")),
            'contact' => $this->faker->phoneNumber(),
        ];
    }
}
