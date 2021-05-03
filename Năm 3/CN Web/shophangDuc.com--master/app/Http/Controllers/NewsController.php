<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
class NewsController extends Controller
{
    //
    public function getDanhsach(){
    	$news=News::all();
    	return view('admin.news.danhsach',['news'=>$news]);
    }
     public function getThem(){
        $tintuc=News::all();
        return view('admin.news.them',['tintuc'=>$tintuc]);
    }
    public function postThem(Request $request){
        $this->validate($request,[
            'name'=>'required|min:3|max:100',
            'overview'=>'required'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên ',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            'overview.required'=>'Bạn chưa nhập overview'
            ]);
        $tintuc=new News;
        $tintuc->name=$request->name;
        $tintuc->overview=$request->overview;
        $tintuc->content=$request->content;
        $tintuc->is_active=$request->is_active;
        if($request->hasFile('image'))
        {
            $file=$request->file('image');
            $duoi=$file->getClientOriginalExtension();
            if($duoi!='jpg'&& $duoi !="png" &&$duoi !='jgep'){
                return redirect('admin/news/them')->with('thongbao','Bạn chọn đuôi file không hợp lệ');
            }
            $name=$file->getClientOriginalName();
            $hinh=str_random(4)."_".$name;
            // xử lý hình có tên giống nhau
            while (file_exists("upload/news/".$hinh)) {
                # code...
                $hinh=str_random(4)."_".$name;
            }
            $file->move('upload/news',$hinh);
            $tintuc->image=$hinh;
        }
        else
        {
            $tintuc->image="";
        }
        $tintuc->save();
        return redirect('admin/news/danhsach')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
        $tintuc=News::find($id);
        return view ('admin.news.sua',['tintuc'=>$tintuc]);
    }
    public function postSua(Request $request,$id){
        $this->validate($request,[
            'name'=>'required|min:3|max:100',
            'overview'=>'required'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên ',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            'overview.required'=>'Bạn chưa nhập overview'
            ]);
        $tintuc=new News;
        $tintuc->name=$request->name;
        $tintuc->overview=$request->overview;
        $tintuc->content=$request->content;
        $tintuc->is_active=$request->is_active;
        if($request->hasFile('image'))
        {
            $file=$request->file('image');
            $duoi=$file->getClientOriginalExtension();
            if($duoi!='jpg'&& $duoi !="png" &&$duoi !='jgep'){
                return redirect('admin/news/them')->with('thongbao','Bạn chọn đuôi file không hợp lệ');
            }
            $name=$file->getClientOriginalName();
            $hinh=str_random(4)."_".$name;
            // xử lý hình có tên giống nhau
            while (file_exists("upload/news/".$hinh)) {
                # code...
                $hinh=str_random(4)."_".$name;
            }
            $file->move('upload/news',$hinh);
            $tintuc->image=$hinh;
        }
        else
        {
            $tintuc->image="";
        }
        $tintuc->save();
        return redirect('admin/news/them')->with('thongbao','Thêm thành công');
    }
    public function getXoa($id){
        $tintuc=News::find($id);
        $tintuc->delete();
        return redirect('admin/news/danhsach')->with("thongbao",'Xóa thành công');
    }

}
