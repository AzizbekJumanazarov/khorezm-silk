<?php

namespace App;

use App\Traits\Translate;

/**
 * Class Page
 * @package App
 */
class Page extends \TCG\Voyager\Models\Page
{
    use Translate;

    /**
     * @property array
     */
    protected $translatable = ['body', 'excerpt'];
}