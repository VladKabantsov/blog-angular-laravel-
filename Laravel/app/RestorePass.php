<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class RestorePass extends Model
{
    protected $fillable = ['email', 'key'];

    public $timestamps = true;

    protected $table = 'restore_passwords';

    public static function deleteKey($email) {

        DB::table('restore_passwords')->where('email', $email)->delete();
    }

    public function user() {

        return $this->belongsTo('\App\User');
    }

}
