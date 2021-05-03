<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
 	protected $table="Partner";
 	public function loai(){
 		return $this->hasMany('App\Category','id_partner','id');
 	}
}
