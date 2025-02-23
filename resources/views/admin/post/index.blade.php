@extends('layouts.admin')
@section('content')
    <div>
        <table class="table table-striped table-dark mt-4">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">Title</th>
                <th scope="col">Category</th>
            </tr>
            </thead>
            <tbody>
            @foreach($posts as $post)
                <tr>
                    <th scope="row">{{ $post->id }}.</th>
                    <td><a href="{{ route('admin.post.show', $post->id) }}">{{ $post->title }}</a></td>
                    <th scope="row">
                        {{ $post->category->title }}
                    </th>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="mt-3">
            {{ $posts->withQueryString()->links() }}
        </div>
    </div>
@endsection
