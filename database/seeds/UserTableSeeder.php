<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Role;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    
       // User::truncate();

        $adminRole = Role::where('name','admin')->first();
        $employeerRole = Role::where('name','employeer')->first();
        $userRole = Role::where('name','user')->first();

        $admin=User::create([

        	'username'=>'Admin',
        	'email'=>'wisdomkukah@hotmail.com',
        	'firstname'=>'Wisdom',
        	'lastname'=>'Nanayaw',
        	'password'=>bcrypt('policeman')
        ]);

         $employeer=User::create([

        	'username'=>'Chris',
        	'email'=>'chrisadahene@gmail.com',
        	'firstname'=>'Chris',
        	'lastname'=>'Adahene',
        	'password'=>bcrypt('policeman')
        ]);

         $user=User::create([

        	'username'=>'Saint',
        	'email'=>'saintman@gmail.com',
        	'firstname'=>'Sainty',
        	'lastname'=>'Godwin',
        	'password'=>bcrypt('policeman')
        ]);


        $admin->roles()->attach($adminRole);
        $employeer->roles()->attach($employeerRole);
        $user->roles()->attach($userRole);
    
    
    }
}
