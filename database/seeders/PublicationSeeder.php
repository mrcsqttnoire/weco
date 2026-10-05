<?php

namespace Database\Seeders;

use App\Models\Catégorie;
use App\Models\Domaines;
use App\Models\Publication;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PublicationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {
        $categories = Catégorie::all();
        $User = User::all();
        $domaine = Domaines::all();

        Publication::factory(35)
            ->sequence(fn () => [
                'id_categorie' => $categories->random(),
                'user_id' => $User->random(),
                'id_domaine' => $domaine->random(),
            ])
            ->create();
    }
}
