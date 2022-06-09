<?php

namespace Database\Seeders;

use App\Models\AppLog;
use App\Models\Driver;
use App\Models\OrderVeh;
use App\Models\RentVeh;
use App\Models\User;
use App\Models\Vehicle;
use App\Models\VehUse;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Vehicle::factory(4)->create();
        Driver::factory(4)->create();
        OrderVeh::factory(4)->create();
        RentVeh::factory(4)->create();
        VehUse::factory(4)->create();
        AppLog::factory(4)->create();

        $data = [
            [
            'id' => 1,
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'role' => 'Admin',
            'password' => Hash::make('password'),
            'created_at' => now(),
            'updated_at' => now()
            ],
            [
            'id' => 2,
            'name' => 'penyetuju',
            'email' => 'penyetuju@gmail.com',
            'role' => 'Approver',
            'password' => Hash::make('password'),
            'created_at' => now(),
            'updated_at' => now()
            ],
            [
            'id' => 3,
            'name' => 'manajer',
            'email' => 'manajer@gmail.com',
            'role' => 'Manager',
            'password' => Hash::make('password'),
            'created_at' => now(),
            'updated_at' => now()
            ],
        ];
        User::insert($data);
        
    }
}
