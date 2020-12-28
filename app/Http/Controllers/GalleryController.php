<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Gallery;


class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $images = Gallery::latest()->limit(10)->get();
            
        return view('gallery', compact('images'));
    }
 
    
}
