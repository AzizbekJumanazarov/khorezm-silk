<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;
use App\Gallery;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    /**
     * Switch language
     *
     * @param $lang
     * @return \Illuminate\Http\RedirectResponse
     */
    public function switchLang($lang)
    {
        session()->put('lang', $lang);

        return redirect()->back();
    }

    /**
     * About page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|void
     */
    public function about()
    {
        $images = Gallery::latest()->limit(6)->get();
        $content = Page::where('slug', 'about-us')->first();

        if (!$content)
            return abort(404);

        return view('about', compact('content', 'images'));
    }

    /**
     * Pagination
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|View
     */
    public function galleryOffset(Request $request)
    {
        $id = $request->get('id');
        $images = Gallery::where('id', '<', $id)
            ->orderBy('id', 'DESC')
            ->limit(3)
            ->get();

        return view('gallery._item', compact('images'));
    }
}
