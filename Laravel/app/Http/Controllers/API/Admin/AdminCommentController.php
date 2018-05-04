<?php

namespace App\Http\Controllers\API\Admin;

use App\Article;
use App\Comment;
use App\Http\Requests\StoreComment;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminCommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     */
    public function index(User $admin, Article $article) {

        return $article->comments()->get()->load('user');
    }

    /**
     * Display the specified resource.
     *
     */
    public function show(User $admin, Article $article, Comment $comment) {

        return $comment;
    }

    /**
     * Update the specified resource in storage.
     *
     */
    public function update(User $admin, Article $article, Comment $comment, StoreComment $request) {

        $comment->update($request->only(['content', 'parent_id']));
    }

    /**
     * Remove the specified resource from storage.
     *
     */
    public function destroy(User $admin, Article $article, Comment $comment) {

        $comment->delete();
    }
}
