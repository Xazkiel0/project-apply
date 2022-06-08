<?php

namespace Database\Seeders;

use App\Models\Driver;
use App\Models\OrderVeh;
use App\Models\RentVeh;
use App\Models\User;
use App\Models\Vehicle;
use App\Models\VehUse;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(1)->create();
        Vehicle::factory(4)->create();
        Driver::factory(4)->create();
        OrderVeh::factory(4)->create();
        RentVeh::factory(4)->create();
        VehUse::factory(4)->create();
        
    }
}
