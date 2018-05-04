<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Requests\BaseAuth;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     *
     */
    public function index(Request $request) {

        if ($request->only('users')) {

            return User::all();
        } else {

            if (Auth::guard('api')->user()) {

                return response('Unauthorized', 401);
            } else {

                return Auth::guard('api')->user();
            }
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     *
     */
    public function store(BaseAuth $request) {

        if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {

            $user = Auth::user();
            $user->token = $user->createToken('MyApp')->accessToken;

            return $user;
        } else {

            return response(['error' => 'Unauthorised'], 401);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy() {

        $user = Auth::guard('api')
                    ->user()
                    ->token()
                    ->revoke();

        return response('success');
    }
}


