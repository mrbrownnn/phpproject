<?php

namespace Database\Seeders;

use Illuminate\Support\Str;
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
        \App\Models\Classroom::factory(10)->create();
        // \App\Models\User::factory(50)->create();

        \App\Models\User::create([
            'name' => 'Học Sinh A',
            'username' => 'student',
            'email' => 'student@gmail.com',
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
            'role' => 'student',
            'profile_id' => \App\Models\StudentProfile::create([
                    'dob' => '2003-08-08',
                    'code' => 'AT150808',
                    'class_id' => \App\Models\Classroom::all()->random()->id,
                ])->id,
            ]);
        \App\Models\User::create([
            'name' => 'Giáo Viên B',
            'username' => 'teacher',
            'email' => 'teacher@gmail.com',
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
            'role' => 'teacher',
            'profile_id' => \App\Models\TeacherProfile::create([])->id,
        ]);

        // \App\Models\Subject::factory(10)->create();
        $subjects = [
            ['Toán Cao Cấp 1', 'TCC1', 1],
            ['Toán Cao Cấp 2', 'TCC2', 2],
            ['Toán Cao Cấp 3', 'TCC3', 1],
            ['Giải thuật lập trình', 'GTL', 3],
            ['Tư tưởng Hồ Chí Minh', 'TTH', 2],
            ['Mạng Máy Tính', 'MMT', 3],
            ['An Toàn Mạng', 'ATM', 4],
            ['Lý Thuyết Truyền Tin', 'TTT', 3],
            ['Xác suất thống kê', 'XST', 4],
            ['Thể chất 1', 'TC1', 5],
            ['Thể chất 2', 'TC2', 6],
        ];
        foreach($subjects as $subject) {
            \App\Models\Subject::create([
                'name' => $subject[0],
                'code' => $subject[1],
                'semester' => $subject[2],
            ]);
        }

        // \App\Models\Score::factory(1000)->has(
        //         \App\Models\Score::factory()->count(rand(0, 10))
        //     )->create();
    }
}
