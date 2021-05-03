<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table="Product";
    public function loai(){
    	return $this->belongsTo('App\Category','id_category','id');
    }
    public function hoadon(){
    	return $this->belongsTo('App\Order_detail','id_product','id');
    }
    public function phanhoi(){
    	return $this->hasMany('App\Feedback','id_product','id');
    }

}
