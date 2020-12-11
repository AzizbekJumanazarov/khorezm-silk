<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use App\Page;
use App\Post;
use App\Review;

class LandingPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $content = Page::where('slug', 'about-us')->first();

        $products = Product::all();

        $reviews = Review::latest()->take(5)->get();

        $posts = Post::orderBy('id', 'DESC')
            ->limit(5)
            ->get();

        return view('landing-page', compact('content', 'posts', 'products', 'reviews'));
    }
}
