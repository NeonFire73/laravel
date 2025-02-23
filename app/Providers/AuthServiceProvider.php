<?php

namespace App\Providers;

use App\Models\User;
use App\Policies\AdminPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     *  Карта политик авторизации для приложения.
     *
     *  @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
        User::class => AdminPolicy::class,
    ];

    /**
     * Регистрация любых служб аутентификации и авторизации.
     */
    public function boot(): void
    {

        // Пример определения политики доступа
        // Gate::define('view-dashboard', function ($user) {
        //     return $user->isAdmin();
        // });
    }
}
