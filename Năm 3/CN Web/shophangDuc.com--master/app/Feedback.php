<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table="Feedback";
    public function trangthai(){
        return $this->hasMany('App\Status','id_status','id');
    }
    public function sanpham(){
        return $this->belongsTo('App\Product','id_product','id');
    }
    public function tintuc(){
        return $this->belongsTo('App\News','id_news','id');
    }
    public function phanhoi(){
        return $this->belongsTo('App\User','id_user','id');
    }
}
