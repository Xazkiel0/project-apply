<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
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
