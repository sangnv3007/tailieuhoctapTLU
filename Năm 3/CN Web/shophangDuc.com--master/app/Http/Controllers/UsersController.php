<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\User;
class UsersController extends Controller
{
    //
    public function getDanhsach(){
    	$user=User::all();
    	return view('admin.users.danhsach',['user'=>$user]);
    }
     public function getThem(){
        $user= User::all();
        return view('admin.users.them',['user'=>$user]);
    }
    public function postThem(Request $request){
        $this->validate($request,[
            'name'=>'required|min:3|max:100',
            'email'=>'required'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên ',
            'name.min'=>'Tên có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên phải có độ dài từ cho đến 100 ký tự',
            'email.required'=>'Bạn chưa nhập email'
            ]);
        $user=new User;
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password=$request->password;
        $user->level=$request->level;
        $user->remember_token=$request->remember_token;
        $user->save();
        return redirect('admin/users/danhsach')->with('thongbao','Thêm thành công');
    }
    public function getdangnhapAdmin(){
    	return view('admin.login');
    }
    public function postdangnhapAdmin(Request $request)
    {

    	$this->validate($request,[
    		'email'=>'required',
    		'password'=>'required|min:9|max:10'
    		],[
    		'email.required'=>'Bạn chưa nhập Email',
    		'password.required'=>'Bạn chưa nhập password',
    		'password.min'=>'Username hoặc password không đungs',
    		'password.max'=>'Username hoặc password không đúng'
    		]);
        // $email=$request['email'];
        // $password=$request['password'];
        // // $user=User::find();

    	if(Auth::attempt(['email'=>$request->email,'password'=>$request->email])){
    		return redirect('admin/product/danhsach');
    	}
    	else{
    		return redirect('admin/product/danhsach')->with('thongbao','Đăng nhập thành công');
    	}
    }
    public function getdangxuatAdmin(){
    	Auth::logout();
    	return redirect('admin/login');
    }
}
