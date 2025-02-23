@extends('layouts.companies')
@section('content')
    <div>
        @foreach($companies as $company)
            <a href="{{ route('company.show', $company->id) }}"><div>{{ $company->id }}. {{$company->name}} ({{ $company->country }})</div></a>
        @endforeach
    </div>
@endsection
