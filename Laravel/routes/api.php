<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::apiResources(['register' => 'API\Auth\RegisterController'],['only' => ['store']] );

Route::apiResources(['categories' => 'API\CategoryController'], ['only' => 'index']);

Route::apiResources(['restore' => 'API\Auth\RestoreController'],['only' => ['index', 'store']]);

Route::group(['middleware' => 'auth:api'], function(){

    Route::delete('user', 'API\Auth\LoginController@destroy');

    Route::post('articles', 'API\ArticleController@store');

    Route::post('articles.comments', 'API\CommentController@store');

    Route::patch('admin.articles', 'API\Admin\AdminArticleController@update');

    Route::delete('admin.articles', 'API\Admin\AdminArticleController@destroy');

    Route::patch('admin.articles.comments', 'API\Admin\AdminCommentController@update');

    Route::delete('admin.articles.comments', 'API\Admin\AdminCommentController@destroy');

});

Route::apiResources(['articles' => 'API\ArticleController']);

Route::apiResources(['articles.comments' => 'API\CommentController'], ['only' => ['index', 'store']]);

Route::apiResources(['user' => 'API\Auth\LoginController'],['only' => ['index', 'store', 'destroy']]);

Route::apiResources(['admin' => 'API\Admin\AdminController']);

Route::apiResources(['admin.articles' => 'API\Admin\AdminArticleController'], ['except' => ['store']]);

Route::apiResources(['admin.articles.comments' => 'API\Admin\AdminCommentController'], ['except' => ['store']]);

