<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table="Customer";
    public function hoadon(){
    	return $this->hasMany('App\Order_product','id_customer','id');
    }
}
