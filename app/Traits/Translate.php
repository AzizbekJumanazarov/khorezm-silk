<?php

namespace App\Traits;

/**
 * Trait Translate
 * @package App\Traits
 */
Trait Translate
{
    /**
     * @param $attribute
     * @return mixed
     */
    public function t($attribute)
    {
        return $this->getTranslatedAttribute($attribute, app()->getLocale(), 'fallbackLocale');
    }
}