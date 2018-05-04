<?php

namespace App\Http\Controllers\API;

use App\Article;
use App\Category;
use App\Http\Requests\ArticlesRequest;
use App\Http\Requests\ArticleStore;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use stdClass;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ArticlesRequest $request) {

        $data = $request->only(['size', 'category_id', 'user_id', 'keyWord', 'skip']);

        $articles = new Article();

        if (!empty($data[ 'category_id' ])) {

            $articles = $articles->ofCategory($data[ 'category_id' ]);
        }

        if (!empty($data[ 'user_id' ])) {

            $articles = $articles->ofAuthor($data[ 'user_id' ]);
        }

        if (!empty($data[ 'keyWord' ])) {

            $articles = $articles->ofKeyWord($data[ 'keyWord' ]);
        }

        $count = $articles->count();

        $articles = $articles->skip($data['skip'])
                             ->take($data['size'])
                             ->get()
                             ->load('user', 'comments', 'category');

        return response([
            'articles'=>$articles,
            'count'=>$count,
                            ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     */
    public function store(ArticleStore $request) {

        return Auth::guard('api')->user()->articles()
                   ->create($request->only(['title', 'text', 'short_text', 'category_id']));
    }

    /**
     * Display the specified resource.
     *
     */
    public function show(Article $article) {

        return $article->load('user', 'comments', 'category');
    }

    /**
     * Update the specified resource in storage.
     *
     */
    public function update(ArticleStore $request, Article $article) {

        $article->update($request->only(['title', 'text', 'short_text', 'category_id']));
    }

    /**
     * Remove the specified resource from storage.
     *
     */
    public function destroy(Article $article) {

        $article->delete();
    }

}
