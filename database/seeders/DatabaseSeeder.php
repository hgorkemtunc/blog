<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
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
         \App\Models\User::factory(8)->create(); //dummy users

         \App\Models\User::factory()->create([
             'name' => 'Admin',
             'email' => 'admin@admin.com',
             'password' => bcrypt('123456'),
             'created_at' => new \DateTime(),
             'updated_at' => new \DateTime(),
         ]); // Main user

         \App\Models\Post::factory(50)->create(); //dummy posts

    }
}
