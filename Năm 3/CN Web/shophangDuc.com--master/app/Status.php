<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Feedback;
class Status extends Model
{
    //
    protected $table="Status";
    public function phanhoi(){
    	return $this->belongsTo('App\Feedback','id_status','id');
    }
}
