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
        // $categories = Category::with('products')->get();
        $products = Product::where('icon', '[]')->get();
        // return view('products.list')->with([
        //     'products' => $products,
        // ]);
        return view('products.list', compact('products'));
    }
}
