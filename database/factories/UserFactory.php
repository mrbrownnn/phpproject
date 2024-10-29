<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\StudentProfile;
use App\Models\TeacherProfile;
use App\Models\Classroom;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $roles = ['student', 'teacher'];
        $role = $roles[array_rand($roles)];
        $code = $this->faker->unique()->regexify('[A-Z]{2}[0-9]{8}');
        if($role == 'student') {
            $profile_id = StudentProfile::create([
                'dob' => now(),
                'code' => $code,
                'class_id' => Classroom::all()->random()->id,
            ])->id;
        } else if ($role == 'teacher') {
            $profile_id = TeacherProfile::create()->id;
        }
        return [
            'name' => $this->faker->name(),
            'username' => $role == 'student' ? $code : $this->faker->userName(),
            'email' => $this->faker->unique()->safeEmail(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            'profile_id' => $profile_id,
            'role' => $role,
        ];
    }
}
