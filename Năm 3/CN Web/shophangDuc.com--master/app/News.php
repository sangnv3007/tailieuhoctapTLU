<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table="News";
    public function loai(){
    	return $this->belongsTo('App\Category','id_type','id');
    }
    public function phanhoi(){
    	return $this->hasMany('App\Feedback','id_news','id');
    }

}
