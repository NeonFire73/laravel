<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
    <title>Start page</title>
</head>
<body>
<main>
    <div class="container ms-0 mt-2">
        <h1>This is the main page of my site</h1>
        <p><a href="{{ route('home') }}"><button type="button" class="btn btn-success">Authorization</button></a></p>
    </div>
</main>

</body>
</html>
