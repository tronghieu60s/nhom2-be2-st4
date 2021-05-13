<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public $primaryKey = "order_id";

    public function details()
    {
        return $this->hasMany('App\OrderDetail', 'detail_id');
    }
}
