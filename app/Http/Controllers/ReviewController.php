<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Review;


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
            
        return view('reviews.index', compact('reviews'));
    }
 
    
}
