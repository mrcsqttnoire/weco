<?php

namespace Database\Seeders;

use App\Models\Domaines;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DomaineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $values = ['Technologie', 'Musique', 'Programmation', 'Design', 'Santé', 'Sport'];
        $domaine = collect($values);
        $domaine->each(fn ($domaine) => Domaines::create([
            'Domaine' => $domaine,
        ]));
    }
}
