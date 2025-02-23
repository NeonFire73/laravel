@extends('layouts.companies')
@section('content')
    <div class="container">
        <div>{{ $company->id }}. {{ $company->name }} ({{ $company->country }})</div>
        <div>Founders: {{$company->founder}}</div>
        <div>Link to website: <a href="{{ $company->site }}" target="_blank">{{ $company->site }}</a></div>
    </div>
    <div>
        <a href="{{ route('company.edit', $company->id) }}"><button type="button" class="btn btn-primary">Edit</button></a>
    </div>
    <div>
        <form action="{{ route('company.delete', $company->id) }}" method="post">
            @csrf
            @method('delete')
            <div>
                <input type="submit" class="btn btn-danger" value="Delete">
            </div>
        </form>
    </div>
    <div>
        <a href="{{ route('company.index') }}"><button type="button" class="btn btn-dark">Back</button></a>
    </div>


@endsection
