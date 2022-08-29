<?php

namespace Database\Factories;

use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    protected $model = Post::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        //! Dummy Post Factory
        return [
            'title'        => $this->faker->text(20),
            'body'         => $this->faker->paragraphs(3, true),
            'published_at' => $this->faker->date("Y-m-d H:i:s"),
            'user'         => $this->faker->randomDigitNot(0),
            'inactive'     => $this->faker->randomElement(['0','1']),
            'category'     => implode(',', $this->faker->randomElements(config('app.categories'), 2))
        ]; // 2 random categories for each post.

    }
}
