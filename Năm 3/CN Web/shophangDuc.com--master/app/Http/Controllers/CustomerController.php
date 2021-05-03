<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
class CustomerController extends Controller
{
    //
    public function getDanhsach(){
    	$customer= Customer::all();
    	return view('admin.customer.danhsach',['customer'=>$customer]);
    }
    public function getThem(){
        $khachhang= Customer::all();
        return view ('admin.customer.them',['khachhang'=>$khachhang]);
    }
     public function postThem(Request $request){ 
        $this->validate($request,[
            'name'=>'required|min:3|max:100',
            'email'=>'required',
            'phone'=>'required'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên ',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            'email.required'=>'Bạn chưa nhập mail hợp lệ'
            ]);
       $khachhang= new Customer;
        $khachhang->name=$request->name;
        $khachhang->gender=$request->gender;
        $khachhang->email=$request->email;
        $khachhang->address=$request->address;
        $khachhang->phone=$request->phone;
        $khachhang->overview=$request->overview;
        $khachhang->status=$request->status;
        $khachhang->save();
        return redirect('admin/customer/danhsach')->with('thongbao','Sửa thành công');
    }
    public function getSua($id){
        $khachhang= Customer::find($id);
        return view ('admin.customer.sua',['khachhang'=>$khachhang]);
    }
    public function postSua(Request $request,$id){
        $khachhang= Customer::find($id);
        $khachhang->name=$request->name;
        $khachhang->gender=$request->gender;
        $khachhang->email=$request->email;
        $khachhang->address=$request->address;
        $khachhang->phone=$request->phone;
        $khachhang->overview=$request->overview;
        $khachhang->status=$request->status;
        $khachhang->save();
        return redirect('admin/customer/danhsach')->with('thongbao','Sửa thành công');
    }
    public function getXoa($id){
        $khachhang=Customer::find($id);
        $khachhang->delete();
        return redirect('admin/customer/danhsach')->with("thongbao",'Xóa thành công');
    }

}
