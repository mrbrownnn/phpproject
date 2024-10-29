<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RequestEditScore extends Model
{
    use HasFactory;

    protected $fillable = [
        'message',
        'score_id',
    ];

    public function score() {
        return $this->belongsTo(Score::class, 'score_id');
    }

    public $table = "request_edit_score";
}
