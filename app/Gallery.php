<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Translatable;

/**
 * Class Gallery
 * @package App
 */
class Gallery extends Model
{
    use Translatable;
    use \TCG\Voyager\Traits\Resizable;

    /**
     * @property array
     */
    protected $translatable = [];
}
