<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order_detail;
class Order_detailController extends Controller
{
    //
    public function getDanhsach(){
    	$order_detail=Order_detail::all();
    	return view('admin.order_detail.danhsach',['order_detail'=>$order_detail]);
    }
    public function getThem(){

    }
    public function getSua(){

    }
}
