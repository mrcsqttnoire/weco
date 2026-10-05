<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Publication>
 */
class PublicationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $title = fake()->unique()->sentence;
        $date_at = fake()->dateTimeBetween('-2 months');
        $images = fake()->imageUrl();
        return [
            'title' => $title,
            'slug' => $title,
            'user_id' => 1,
            'content' => fake()->paragraphs(asText: true),
            'isDraft' => 0,
            'created_at' => $date_at,
            'updated_at' => $date_at,
            'images' => 'https://picsum.photos/seed/' . fake()->unique()->numberBetween(1, 9999) . '/640/480',
        ];
    }
}
