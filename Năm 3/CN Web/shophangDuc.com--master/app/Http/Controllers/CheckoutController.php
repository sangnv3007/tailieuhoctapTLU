<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\auth;
class CheckoutController extends Controller
{
    //

    public function getCheck(){
    	//Check for use login
    	if(Auth::check()){
    		echo "Login quickly";
    	}
    	return redirect('loginfont');
    }

    public function getValidate(Request $request){
    	$this->validate($request,[
    		'fullname'=>'required|min:5|max:35',
    		'username'=>'required|min:5!max:35',
    		'password'=>'required|min:5|max:35',
    		],
    		[
    		'fullname.required'=>'enter full name',
    		'username.required'=>'enter user user']);

    		$prodcuct=new Product;
            
    }
}
