<?php

namespace App\Services\Post;

use App\Models\Post;

class Service
{
    public function store($data)
    {

        $post = Post::create($data);

        return $post;

    }

    public function update($post, $data)
    {
        $post->update($data);
    }
}
