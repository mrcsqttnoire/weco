<?php

namespace Database\Seeders;

use App\Models\contenir;
use App\Models\Domaines;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ContenirSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $domaine = Domaines::all();
        $user = User::all();
        
        $user->each(function ($user) use ($domaine){
            $domaineAleatoire = $domaine->random(3);

            $domaineAleatoire->each(fn ($domaine) => contenir::Create([
                'Id_domaine' => $domaine->id,
                'User_Id' => $user->id,
            ]));
        }); 
        //dd($user);
    }
}
