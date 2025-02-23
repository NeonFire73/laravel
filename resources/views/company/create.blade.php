@extends('layouts.companies')
@section('content')
    <form action="{{ route('company.store') }}" method="post">
        @csrf
        <div class="mb-3">
            <label for="content" class="form-label">Name</label>
            <input type="text" name="name" class="form-control" id="content" placeholder="Name of the Company">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Web Site</label>
            <input type="text" name="site" class="form-control" id="content" placeholder="Web Site of the Company">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Country</label>
            <input type="text" name="country" class="form-control" id="content" placeholder="Country of the Company">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Founders</label>
            <input type="text" name="founder" class="form-control" id="content" placeholder="Founders of the Company">
        </div>
        <button type="submit" class="btn btn-primary">Add</button>
    </form>
@endsection
