<?php

namespace App\Http\Controllers\API;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     *
     */
    public function index() {

        return Category::all();
    }

}
