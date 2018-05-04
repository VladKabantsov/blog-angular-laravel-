<?php

namespace App;

use Illuminate\Support\Facades\DB;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function articles() {

        return $this->hasMany('\App\Article');
    }

    public function comments() {

        return $this->hasMany('\App\Comment');
    }

    public function restorePass() {

        return $this->hasOne('\App\RestorePass');
    }

    public function setPasswordAttribute($value) {

        $this->attributes['password'] = bcrypt($value);
    }

}
