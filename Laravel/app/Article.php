<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
        'title', 'text', 'short_text',
        'category_id',
    ];

    public $timestamps = true;

    public function scopeOfCategory($query, $categoryID) {

        return $query->where('category_id', $categoryID);
    }

    public function scopeOfAuthor($query, $userID) {

        return $query->where('user_id', $userID);
    }

    public function scopeOfKeyWord($query, $keyWord) {

        return $query->where("title", "LIKE", "%$keyWord%")
                     ->orWhere("text", "LIKE", "%$keyWord%");
    }

    public function user() {

        return $this->belongsTo('\App\User');
    }

    public function category() {

        return $this->belongsTo('\App\Category');
    }

    public function comments() {

        return $this->hasMany('\App\Comment');
    }


}
