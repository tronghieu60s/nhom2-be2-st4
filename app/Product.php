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

    public function taxonomies()
    {
        return $this->belongsToMany('App\Taxonomy', 'taxonomy_relationships', 'product_id', 'taxonomy_id');
    }
}
