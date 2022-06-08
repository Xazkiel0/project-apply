<?php

namespace Database\Factories;

use App\Models\Vehicle;
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
            'id' => Vehicle::createLicense(7),
            'name' => $this->faker->firstName(),
            'brand' => $this->faker->lastName(),
            'carry' => $this->faker->randomElement(['person','material']),
            'owner' => $this->faker->lastName(),
            'rent_till' => date_add(now(), date_interval_create_from_date_string(rand(1, 20) . " days")),
            'contact' => $this->faker->phoneNumber(),
        ];
    }
}
