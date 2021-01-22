<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::where('icon', '[]')->get();

        return view('products.list', compact('products'));
    }

    /**
     * One item.
     *
     * @return \Illuminate\Http\Response
     */
    public function view($slug)
    {
        $product = Product::where('slug', $slug)->first();
        $random_items = Product::inRandomOrder()->where('icon', '[]')->limit(3)->get();

        if (!$product)
            return abort(404);
        return view('products.view', compact('product', 'random_items'));
    }
}
