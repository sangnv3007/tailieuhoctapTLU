<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order_detail extends Model
{
   	protected $table="Order_detail";
   	public function sanpham(){
   		return $this->hasMany('App\Product','id_product','id');
   	}
   	public function hoadon(){
   		return $this->belongsTo('App\Order_product','id_order','id');
   	}
}
