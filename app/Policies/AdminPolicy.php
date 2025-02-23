<?php

namespace App\Policies;

use App\Models\Post;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class AdminPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user)
    {

    }

    /**
     * Determine whether the user can view the model.
     * @param User $user
     * @param User $model
     * @param $post
     * @return bool
     */
    public function view(User $user, User $model)
    {
        return $model->role === 'admin';
    }


    /**
     * Determine whether the user can create models.
     */
    public function create(User $user)
    {

    }

    /**
     * Determine whether the user can update the model.
     * @param User $user
     * @param User $model
     * @param $post
     */
    public function update(User $user, User $model,Post $post)
    {

    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, User $model)
    {

    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, User $model)
    {

    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, User $model)
    {

    }
}
