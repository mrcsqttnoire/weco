<?php

namespace Database\Seeders;
use App\Models\Catégorie;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class catégoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = collect(['Article', 'Problème']);
        $categories->each(fn ($categories) => Catégorie::create([
            'categorie' => $categories,
            'slug' => $categories,
        ]));
    }
}
