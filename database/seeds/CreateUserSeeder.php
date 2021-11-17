<?php

use Illuminate\Database\Seeder;
use App\Models\User;

class CreateUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name' => 'Admin',
                'email' => 'salmalabibah21@gmail.com',                                                          
                'password' => bcrypt('meiatascy14'),
            ],
        ];
        foreach ($users as $key => $value) {
            User::create($value);
        }   
    }
}
