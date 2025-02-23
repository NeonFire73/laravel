@extends('layouts.admin')
@section('content')
    <div>
        <div><h1>{{ $post->id }}. <u>{{ $post->title }}</u></h1></div>
        <div><b>Content:</b> {{ $post->content }}</div>
        <div><b>Image:</b> {{ $post->image }}</div>
    </div>
    <div class="mt-2">
        <a href="{{ route('admin.post.edit', $post->id) }}"><button type="button" class="btn btn-primary">Edit</button></a>
    </div>
    <div class="mt-2">
        <form action="{{ route('admin.post.delete', $post->id) }}" method="post">
            @csrf
            @method('delete')
            <div>
                <input type="submit" class="btn btn-danger" value="Delete">
            </div>
        </form>
    </div>
@endsection
