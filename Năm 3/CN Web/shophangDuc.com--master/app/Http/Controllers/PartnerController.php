<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Partner;

class PartnerController extends Controller
{
    //
    public function getDanhsach(){
    	$partner=Partner::all();
    	return view('admin.partner.danhsach',['partner'=>$partner]);
    }
    public function getThem(){
    	return view('admin.partner.them');
    }
    public function getXoa($id){
        $partner=Partner::find($id);
        if($partner !=null){
        $partner->delete();
        return view('admin.partner.danhsach')->with("thongbao",'Xóa thành công');
    }
    else{
        return redirect('admin.partner.danhsach')->with("thongbao","Fail");
    }
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
        $partner = new Partner;
        $partner->name=$request->name;
        $partner->name=$request->name;
        $partner->description=$request->description;
        $partner->email=$request->email;
        $partner->address=$request->address;
        $partner->phone=$request->phone;
        $partner->is_active=$request->active;
        if($request->hasFile('image'))
        {
            $file=$request->file('image');
            $duoi=$file->getClientOriginalExtension();
            if($duoi!='jpg'&& $duoi !="png" &&$duoi !='jgep'){
                return redirect('admin/partner/them')->with('thongbao','Bạn chọn đuôi file không hợp lệ');
            }
            $name=$file->getClientOriginalName();
            $hinh=str_random(4)."_".$name;
            // xử lý hình có tên giống nhau
            while (file_exists("upload/partner/".$hinh)) {
                # code...
                $hinh=str_random(4)."_".$name;
            }
            $file->move('upload/partner',$hinh);
            $partner->image=$hinh;
        }
        else
        {
            $partner->image="";
        }
        $partner->save();
        return redirect('admin/partner/danhsach')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
        $partner=Partner::find($id);
        return view ('admin.partner.sua',['partner'=>$partner]);
    }
     public function postSua(Request $request,$id){
        $this->validate($request,[
            'name'=>'required|min:3|max:100',
            'phone'=>'required'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên thể loại',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            'price.required'=>'Bạn chưa nhập số điện thoại'
            ]);
        $partner=Partner::find($id);
        $partner->name=$request->name;
        $partner->description=$request->description;
        $partner->email=$request->email;
        $partner->address=$request->address;
        $partner->phone=$request->phone;
        $partner->is_active=$request->active;
        if($request->hasFile('image'))
        {
            $file=$request->file('image');
            $duoi=$file->getClientOriginalExtension();
            if($duoi!='jpg'&& $duoi !="png" &&$duoi !='jgep'){
                return redirect('admin/partner/them')->with('thongbao','Bạn chọn đuôi file không hợp lệ');
            }
            $name=$file->getClientOriginalName();
            $hinh=str_random(4)."_".$name;
            // xử lý hình có tên giống nhau
            while (file_exists("upload/partner/".$hinh)) {
                # code...
                $hinh=str_random(4)."_".$name;
            }
            $file->move('upload/partner',$hinh);
            $partner->image=$hinh;
        }
        else
        {
            $partner->image="";
        }
        $partner->save();
        return redirect('admin/partner/danhsach')->with('thongbao','Sửa thành công');
    }
}
