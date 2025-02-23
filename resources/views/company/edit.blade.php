@extends('layouts.companies')
@section('content')
    <h1>Editor</h1>
    <form action="{{ route('company.update', $company->id) }}" method="post">
        @csrf
        @method('patch')
        <div class="mb-3">
            <label for="content" class="form-label">Name</label>
            <input type="text" name="name" class="form-control" id="content" value="{{ $company->name }}">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Web Site</label>
            <input type="text" name="site" class="form-control" id="content" value="{{ $company->site }}">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Country</label>
            <input type="text" name="country" class="form-control" id="content" value="{{ $company->country }}">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Founders</label>
            <input type="text" name="founder" class="form-control" id="content" value="{{ $company->founder }}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
@endsection
