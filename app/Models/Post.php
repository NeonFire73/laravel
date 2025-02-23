<?php

namespace App\Models;

use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory;
    protected $table = 'posts';
    protected $guarded = [];
    use SoftDeletes;
    use Filterable;

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
