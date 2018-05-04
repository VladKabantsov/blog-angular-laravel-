<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Requests\Letter;
use App\Mail\RestorePassword;
use App\RestorePass;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;


class RestoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Letter $request) {

        $user = User::where('email', $request->only('email'))->firstOrFail();
        $key = md5(microtime());
        $user->restorePass()->create(['email' => $user->email, 'key' => $key]);

        Mail::to($user->email)->send(new RestorePassword($key, $user->email));

        return response(['message' => 'Please check your email!'], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     */
    public function store(\App\Http\Requests\RestorePassword $request) {


        $data = $request->only('key', 'password', 'email');
        $restore = RestorePass::where('key',$data['key'])->firstOrFail();
        $user = User::where('email', $data['email'])->firstOrFail();
        $user->password = $data['password'];
        $user->save();
        $restore->delete();

        return response(['message' => 'Password changed success!'], 200);
    }


}
