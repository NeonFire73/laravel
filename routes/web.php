<?php


use App\Http\Controllers\AboutController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

//use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('site');
});

//Route::get('/post', [PostController::class, 'show']);
//Route::get('/user', [UserController::class, 'show']);




    //TODO:Study project POST
Route::get('/posts', [PostController::class, 'index'])->name('post.index');
Route::get('/posts/create', [PostController::class, 'create'])->name('post.create');
Route::post('/posts', [PostController::class, 'store'])->name('post.store');
Route::get('/posts/{post}', [PostController::class, 'show'])->name('post.show');
Route::get('/posts/{post}/edit', [PostController::class, 'edit'])->name('post.edit');
Route::patch('/posts/{post}', [PostController::class, 'update'])->name('post.update');
Route::delete('/posts/{post}', [PostController::class, 'destroy'])->name('post.delete');

Route::get('/main', [MainController::class, 'index'])->name('main.index');
Route::get('/contacts', [ContactController::class, 'index'])->name('contact.index');
Route::get('/about', [AboutController::class, 'index'])->name('about.index');

//Admin
Route::group(['namespace' => 'Admin', 'prefix' => 'admin', 'middleware' => 'admin'], function () {
    Route::group(['namespace' => 'Admin'], function () {
        Route::get('/posts', [AdminController::class, 'index'])->name('admin.post.index');
        Route::get('/posts/create', [AdminController::class, 'create'])->name('admin.post.create');
        Route::post('/posts', [AdminController::class, 'store'])->name('admin.post.store');
        Route::get('/posts/{post}', [AdminController::class, 'show'])->name('admin.post.show');
        Route::get('/posts/{post}/edit', [AdminController::class, 'edit'])->name('admin.post.edit');
        Route::patch('/posts/{post}', [AdminController::class, 'update'])->name('admin.post.update');
        Route::delete('/posts/{post}', [AdminController::class, 'destroy'])->name('admin.post.delete');
    });
});
//Admin


    //TODO:Study project POST



Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


//Route::get('/houses', [HouseController::class, 'index'])->name('house.index');
//Route::get('/houses/{house}', [HouseController::class, 'show'])->name('house.show');



//Practise project
Route::get('/companies', [CompanyController::class, 'index'])->name('company.index');
Route::get('/companies/create', [CompanyController::class, 'create'])->name('company.create');
Route::post('/companies', [CompanyController::class, 'store'])->name('company.store');
Route::get('/companies/{company}', [CompanyController::class, 'show'])->name('company.show');
Route::get('/companies/{company}/edit', [CompanyController::class, 'edit'])->name('company.edit');
Route::patch('/companies/{company}', [CompanyController::class, 'update'])->name('company.update');
Route::delete('/companies/{company}', [CompanyController::class, 'destroy'])->name('company.delete');
//Practise project






