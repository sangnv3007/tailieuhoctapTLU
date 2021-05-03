<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Partner;
class CategoryController extends Controller
{
    //
    public function getDanhsach(){
        $partner=Partner::all();
    	$theloai=Category::all();
    	return view('admin.category.danhsach',['theloai'=>$theloai,'partner'=>$partner]);
    }
    public function getThem(){
        $partner=Partner::all();
    	return view('admin.category.them',['partner'=>$partner]);
    }
    public function postThem(Request $request){
    	$this->validate($request,[
    		'name'=>'required|min:3|max:100'
    		],
    		[
    		'name.required'=>'Bạn chưa nhập tên ',
            'name.unique'=>'Đã tồn tại!',
    		'name.min'=>'Tên có độ dài từ 3 cho đến 100 ký tự',
    		'name.max'=>'Tên phải có độ dài từ cho đến 100 ký tự',
    		]);
    	$theloai=new Category;
    	$theloai->name=$request->name;
        $theloai->cate_note=$request->cate_note;
        // $theloai->id_partner=$request->partner;
        $theloai->is_active=$request->active;
    	$theloai->save();
    	return redirect('admin/category/danhsach')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
        $theloai= Category::find($id);
        return view('admin.category.sua',['theloai'=>$theloai]);
    }
    public function postSua(Request $request,$id){
        $theloai=Category::find($id);
        $this->validate($request,[
        'name'=>'required|min:3max:100'],
        [
            'name.required'=>'Bạn chưa nhập tên thể loại',
            'name.unique'=>'Thể loại đã tồn tại!',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
        ]
        );
        $theloai=new Category;
        $theloai->name=$request->name;
        $theloai->cate_note=$request->cate_note;
        $theloai->save();
        return redirect('admin/category/danhsach')->with('thongbao','Sua thanh cong');
    }
     public function getXoa($id){
        $category=Category::find($id);
        
        $category->delete();
        return redirect('admin/category/danhsach')->with("thongbao",'Xóa thành công');
    }
}
