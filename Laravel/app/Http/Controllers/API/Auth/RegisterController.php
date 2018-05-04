<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Requests\BaseAuth;
use App\Http\Requests\Register;
use App\User;
use Faker\Provider\Base;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Register $request) {

        $data = $request->only(['name', 'email', 'password']);
        $user = User::create($data);
        $user->token = $user->createToken('MyApp')->accessToken;

        return $user;
    }

}
