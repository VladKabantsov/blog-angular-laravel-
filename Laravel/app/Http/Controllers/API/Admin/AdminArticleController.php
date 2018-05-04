<?php

namespace App\Http\Controllers\API\Admin;

use App\Article;
use App\Http\Requests\ArticleStore;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     */
    public function index() {

        return Article::all()->load('category', 'user');
    }

    /**
     * Display the specified resource.
     *
     */
    public function show(User $admin, Article $article) {

        return $article;
    }

    /**
     * Update the specified resource in storage.
     *
     */
    public function update(User $admin, Article $article, ArticleStore $request) {

        $article->update($request->only(['title', 'text', 'short_text', 'category_id']));
    }

    /**
     * Remove the specified resource from storage.
     *
     */
    public function destroy(User $admin, Article $article) {

        $article->delete();
    }
}
