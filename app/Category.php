<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use App\Traits\Translate;

class Category extends Model
{
    use Translatable, Translate;

    protected $guarded = [];

    protected $table = 'category';

    protected $translatable = ['name'];

    public function products()
    {
        return $this->belongsToMany('App\Product');
    }
}
