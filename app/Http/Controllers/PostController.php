<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
   public function index()
    {
        $posts = Post::orderBy('published_at', 'desc')->select('posts.*', 'users.name')->join('users', 'posts.user', '=', 'users.id')->paginate(16);
        return view('posts.index', compact('posts'));
    }

    public function blog()
    {
        $posts = Post::orderBy('published_at', 'desc')->select('posts.*', 'users.name')->join('users', 'posts.user', '=', 'users.id')->where('inactive', '=', '0')->paginate(16);
        return view('posts.blog', compact('posts'));
    }

    public function create()
    {
        return view('posts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'    => 'required',
            'body'     => 'required',
            'category' => 'required'
            ]);
        $post               = new Post();
        $post->title        = $request->title;
        $post->body         = $request->body;
        $post->published_at = $request->published_at;
        $post->category     = implode(',', $request->category);
        $post->inactive     = $request->inactive;
        $post->user         = Auth::id();

        $post->save();
        return redirect('/home')->with('success');
    }

    public function show(Post $post)
    {
        return view('posts.show', compact('post'));
    }

    public function edit(Post $post)
    {
        return view('posts.edit', compact('post'));
    }

    public function update(Post $post, Request $request)
    {
        $request->validate([
            'title'    => 'required',
            'body'     => 'required',
            'category' => 'required'
            ]);
        $post->title        = $request->title;
        $post->body         = $request->body;
        $post->published_at = $request->published_at;
        $post->category     = implode(',', $request->category);
        $post->inactive     = $request->inactive;

        $post->save();
        return redirect('/home')->with('success');
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return redirect('/home')->with('success');
    }
}
