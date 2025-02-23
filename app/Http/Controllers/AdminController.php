<?php

namespace App\Http\Controllers;

use App\Http\Filters\PostFilter;
use App\Http\Requests\Post\FilterRequest;
use App\Http\Requests\Post\StoreRequest;
use App\Http\Requests\Post\UpdateRequest;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class AdminController extends BaseController
{
    public function index(FilterRequest $request)
    {
        $data = $request->validated();

        $filter = app()->make(PostFilter::class, ['queryParams' => array_filter($data)]);

        $posts = Post::filter($filter)->paginate(10);




        $categories = Category::all();
        return view('admin.post.index', compact('posts', 'categories'));

    }

    public function create(FilterRequest $request)
    {
        $data = $request->validated();
        $filter = app()->make(PostFilter::class, ['queryParams' => array_filter($data)]);
        $posts = Post::filter($filter)->paginate(10);
        $categories = Category::all();
        return view('admin.post.create', compact('categories', 'posts') );
    }

    public function store(StoreRequest $request)
    {
        $data = $request->validated();

        $this->service->store($data);

        return redirect()->route('admin.post.index');
    }

    public function show(Post $post, FilterRequest $request)
    {
        $data = $request->validated();
        $filter = app()->make(PostFilter::class, ['queryParams' => array_filter($data)]);
        $posts = Post::filter($filter)->paginate(10);
        return view('admin.post.show', compact('post', 'posts'));
    }

    public function edit(Post $post, FilterRequest $request)
    {
        $data = $request->validated();
        $filter = app()->make(PostFilter::class, ['queryParams' => array_filter($data)]);
        $posts = Post::filter($filter)->paginate(10);
        $categories = Category::all();
        return view('admin.post.edit', compact('post', 'categories', 'posts'));
    }

    public function update(Post $post, UpdateRequest $request)
    {
        $data = $request->validated();

        $this->service->update($post, $data);

        return redirect()->route('admin.post.show', $post->id);
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return redirect()->route('admin.post.index');
    }
}
