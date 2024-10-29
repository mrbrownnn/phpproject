<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'code',
        'semester',
    ];

    public function teacherSubjectList() {
        return $this->hasMany(TeacherSubject::class, 'subject_id');
    }

    public $table = "subjects";
}
