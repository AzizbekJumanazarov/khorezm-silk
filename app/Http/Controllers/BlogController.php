<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Post;

class BlogController extends Controller
{
    /**
     * Index page of blog
     *
     * @return View
     */
    public function list()
    {
        $posts = Post::orderBy('id', 'DESC')
                        ->limit(6)
                        ->get();

        return view('blog.list', compact('posts'));
    }

    /**
     * Pagination
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|View
     */
    public function offset(Request $request)
    {
        $id = $request->get('id');
        $posts = Post::where('id', '<', $id)
                        ->orderBy('id', 'DESC')
                        ->limit(3)
                        ->get();

        return view('blog._items', compact('posts'));
    }

    /**
     * Show one blog item
     *
     * @param $slug
     * @return View
     */
    public function show($slug)
    {
        $post = Post::where('slug', $slug)->first();
        $random_items = Post::inRandomOrder()->limit(3)->get();

        if (!$post)
            abort(404);

        return view('blog.show', compact('post', 'random_items'));
    }
}
