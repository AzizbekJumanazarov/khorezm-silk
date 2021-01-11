<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Review;
use App\Gallery;
use App\Page;


class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reviews = Review::latest()->limit(3)->get();
        $images = Gallery::latest()->limit(6)->get();
        $content = Page::where('slug', 'about-us')->first();

        if (!$content)
            return abort(404);

        return view('reviews.index', compact('reviews', 'content', 'images'));
    }
}
