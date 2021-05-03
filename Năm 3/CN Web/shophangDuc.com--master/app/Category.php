<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table="Category";
    public function doitac(){
    	return $this->belongsTo('App\Partner','id_partner','id');
    }
    public function sanpham(){
    	return $this->hasMany('App\Product','id_category','id');
    }
    public function tintuc(){
    	return $this->hasMany('App\News','id_category','id');
    }
}
