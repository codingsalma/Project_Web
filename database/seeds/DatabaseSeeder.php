<?php

use Illuminate\Database\Seeder;
use App\User;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
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
