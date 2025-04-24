<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Author;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use HasFactory;

    protected $casts = [
        //'title' => 'App\Casts\TitleCast',
    ];

    public function authors(){
        return $this->belongsTo('App\Models\Author', 'book_author_id');
    }

}