<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public $primaryKey = "product_id";

    public function manufacturer()
    {
        return $this->belongsTo('App\Manufacturer', 'manufacturer_id');
    }

    public function categories()
    {
        return $this->belongsToMany('App\Category', 'categorizable', 'product_id', 'category_id');
    }
}
