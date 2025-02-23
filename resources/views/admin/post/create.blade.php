@extends('layouts.admin')
@section('content')
    <div>
        <form action="{{ route('admin.post.store') }}" method="post">
            @csrf
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" name="title" class="form-control" id="title" placeholder="Title" value="{{ old('title') }}">
                @error('title')
                <p class="text-danger fs-5">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-3">
                <label for="content" class="form-label">Content</label>
                <textarea name="content" class="form-control" id="content" placeholder="Content">{{ old('content') }}</textarea>
                @error('content')
                <p class="text-danger fs-5">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Image</label>
                <input type="text" name="image" class="form-control" id="image" placeholder="Image">
            </div>
            <div class="mb-3">
                <label for="category">Category</label>
                <select class="form-select" aria-label="Default select example" id="category" name="category_id">
                    @foreach($categories as $category)
                        <option
                            {{ old('category_id') == $category->id ? 'selected' : '' }}
                            value="{{ $category->id }}">{{ $category->title }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
@endsection
