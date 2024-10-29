<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class SubjectFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->unique()->name(),
            'code' => $this->faker->unique()->regexify('[A-Z0-9]{3}'),
            'semester' => $this->faker->numberBetween(1, 10),
        ];
    }
}
