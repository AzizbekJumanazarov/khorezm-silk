<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\Translate;
use TCG\Voyager\Traits\Translatable;

class Review extends Model
{
    use Translatable, Translate;

    protected $translatable = ['author_full_name', 'content', 'type'];
}
