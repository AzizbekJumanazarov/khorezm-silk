<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use App\Page;
use App\Post;

class LandingPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::take(6)->inRandomOrder()->get();
        $posts = Post::orderBy('id', 'DESC')
            ->limit(3)
            ->get();
        $content = Page::where('slug', 'about-us')->first();

        return view('landing-page', compact('content', 'posts', 'products'));
    }
}
