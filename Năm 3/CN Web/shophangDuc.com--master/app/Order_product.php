<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order_product extends Model
{
    protected $table="Order_product";
    public function chitiet(){
    	return $this->hasMany('App\Order_detail','id_order','id');
    }
    public function khachhang(){
    	return $this->belongsTo('App\Customer','id_customer','id');
    }
}
