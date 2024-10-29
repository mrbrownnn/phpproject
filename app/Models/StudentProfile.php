<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentProfile extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'dob',
        'code',
        'class_id',
    ];

    public function class() {
        return $this->belongsTo(Classroom::class, 'class_id');
    }

    public function user() {
        return $this->hasOne(User::class, 'profile_id');
    }

    public $table = "student_profiles";
}
