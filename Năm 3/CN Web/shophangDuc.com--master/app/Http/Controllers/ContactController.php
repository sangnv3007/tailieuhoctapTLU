<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
class ContactController extends Controller
{
    //
    public function getDanhsach(){
    	$contact=Contact::all();
    	return view('admin.contact.danhsach',['contact'=>$contact]);
    }
    public function getThem(){
    	return view('admin.contact.them');
    }
    public function postThem(Request $request){
    	$this->validate($request,[
            'name'=>'required|min:3|max:100'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên thể loại',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            ]);
        $contact=new Contact;
        $contact->name=$request->name;
        $contact->save();
        return redirect('admin/contact/them')->with('thongbao','Thêm thành công');
    }
    public function getSua(){

    }
}
