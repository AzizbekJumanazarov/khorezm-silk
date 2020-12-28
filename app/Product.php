<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use App\Traits\Translate;

class Product extends Model
{
    use Translatable, Translate, Resizable;

    protected $fillable = ['quantity'];

    protected $translatable = ['name', 'details', 'description'];

    public function categories()
    {
        return $this->belongsToMany('App\Category');
    }

    public function presentPrice()
    {
        return money_format('$%i', $this->price / 100);
    }

    public function scopeMightAlsoLike($query)
    {
        return $query->inRandomOrder()->take(4);
    }

    /**
     * Get the indexable data array for the model.
     *
     * @return array
     */
    public function toSearchableArray()
    {
        $array = $this->toArray();

        $extraFields = [
            'categories' => $this->categories->pluck('name')->toArray(),
        ];

        return array_merge($array, $extraFields);
    }

    public function getIconUrlAttribute()
    {
        return ($this->icon) ? json_decode($this->icon)[0]->download_link : '';
    }
}
