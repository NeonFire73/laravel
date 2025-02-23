<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
    <title>Posts</title>
</head>
<body>
<nav class="navbar bg-dark border-bottom border-body navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand fs-2" href="#">Vlad</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item fs-4">
                    <a class="nav-link" aria-current="page" href="{{ route('main.index') }}">Main</a>
                </li>
                <li class="nav-item fs-4 dropdown">
                    <a class="nav-link dropdown-toggle" href="{{ route('post.index') }}" role="button"
                       data-bs-toggle="dropdown">Posts</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('post.index') }}">Posts</a></li>
                        <li><a class="dropdown-item" href="{{ route('post.create') }}">Create post</a></li>
                    </ul>
                </li>
                <li class="nav-item fs-4">
                    <a class="nav-link" href="{{ route('about.index') }}">About</a>
                </li>
                <li class="nav-item fs-4">
                    <a class="nav-link" href="{{ route('contact.index') }}">Contacts</a>
                </li>
                <li class="nav-item fs-4">
                    <a class="nav-link" href="{{ route('home') }}">Registration</a>
                </li>
                @can('view', auth()->user())
                    <li class="nav-item fs-4">
                        <a class="nav-link" href="{{ route('admin.post.index') }}">Admin Panel</a>
                    </li>
                @endcan
            </ul>
        </div>
    </div>
</nav>
<div class="container fs-2">
    @yield('content')
</div>
</body>
</html>
