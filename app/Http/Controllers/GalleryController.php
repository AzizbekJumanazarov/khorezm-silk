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
        $images = Gallery::latest()->limit(6)->get();
            
        return view('gallery.index', compact('images'));
    }
    
    public function offset(Request $request)
    {
        $id = $request->get('id');
        $images = Gallery::where('id', '<', $id)
                        ->orderBy('id', 'DESC')
                        ->limit(4)
                        ->get();

        return view('gallery._item', compact('images'));
    }
    
}
