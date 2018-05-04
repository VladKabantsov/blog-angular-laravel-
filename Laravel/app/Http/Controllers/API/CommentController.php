<?php

namespace App\Http\Controllers\API;

use App\Article;
use App\Comment;
use App\Http\Requests\GetComments;
use App\Http\Requests\StoreComment;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Article $article) {

        return Comment::where('article_id', $article->id)
                      ->get()
                      ->load('user');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Article $article, StoreComment $request) {

        $data = $request->only(['content', 'parent_id']);
        $data[ 'article_id' ] = $article->id;

        return Auth::guard('api')->user()
                                 ->comments()
                                 ->create($data)
                                 ->load('user');
    }

}
