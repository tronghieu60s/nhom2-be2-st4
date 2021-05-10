<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manufacturer extends Model
{
    public $primaryKey = "manufacturer_id";

    public function product()
    {
        return $this->hasMany('App\Product');
    }
}
