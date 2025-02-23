<?php

namespace App\Providers;
use App\Models\Post;
use App\Models\User;
use App\Policies\AdminPolicy;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Route;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot()
    {
        Gate::policy(User::class, AdminPolicy::class);

        Route::pattern('id', '[0-9]+');

        Paginator::defaultView('vendor.pagination.bootstrap-5');
        VerifyCsrfToken::except(['/posts']);

    }
}
