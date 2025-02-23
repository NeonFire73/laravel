@extends('layouts.main')
@section('content')
    <div>
            <div><h1 class="text-decoration-underline">{{ $post->id }}. {{ $post->title }}</h1></div>
            <div><b>Content:</b> {{ $post->content }}</div>
            <div><b>Image:</b> {{ $post->image }}</div>
    </div>
    <div>
        <a href="{{ route('post.edit', $post->id) }}">Edit</a>
    </div>
    <div>
        <form action="{{ route('post.delete', $post->id) }}" method="post">
            @csrf
            @method('delete')
            <input type="submit" value="Delete" class="btn btn-link fs-2 p-0">
        </form>
    </div>
    <div>
        <a href="{{ route('post.index') }}">Back</a>
    </div>
@endsection
