<?php

namespace Database\Factories;

use App\Models\Vehicle;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class VehicleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'id'=> Vehicle::createLicense(7),
            'name' => $this->faker->name(),
            'owner' => $this->faker->randomElement(['Cabang','Pusat']),
            'image' => 'img',
            'brand'=> $this->faker->firstName,
            'description'=> $this->faker->text(30),
            'carry' => $this->faker->randomElement(['person','material']),
            'service_date'=> now(),
        ];
    }
}
