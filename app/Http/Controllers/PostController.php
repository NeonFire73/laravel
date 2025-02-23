<?php

namespace App\Http\Controllers;

use App\Http\Filters\PostFilter;
use App\Http\Requests\Post\FilterRequest;
use App\Http\Requests\Post\StoreRequest;
use App\Http\Requests\Post\UpdateRequest;
use App\Http\Resources\Post\PostResource;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;


class PostController extends BaseController
{
    public function index(FilterRequest $request)
    {

        $data = $request->validated();

        $page = $data['page'] ?? 1;
        $perPage = $data['per_page'] ?? 10;

        $filter = app()->make(PostFilter::class, ['queryParams' => array_filter($data)]);

        $posts = Post::filter($filter)->paginate($perPage, ['*'], 'page', $page);

        $categories = Category::all();

        return PostResource::collection($posts);
//        return view('post.index', compact('posts', 'categories'));

    }


    public function create()
    {
        $categories = Category::all();
        return view('post.create', compact('categories'));
    }

    public function store(StoreRequest $request)
    {
        $data = $request->validated();


        $post = $this->service->store($data);

        return new PostResource($post);
//        return redirect()->route('post.index');
    }

    public function show(Post $post)
    {
        return view('post.show', compact('post'));
    }

    public function edit(Post $post)
    {
        $categories = Category::all();
        return view('post.edit', compact('post', 'categories'));
    }


    public function update(Post $post, UpdateRequest $request)
    {
        $data = $request->validated();

        $this->service->update($post, $data);

        return redirect()->route('post.show', $post->id);
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return redirect()->route('post.index');
    }


}
