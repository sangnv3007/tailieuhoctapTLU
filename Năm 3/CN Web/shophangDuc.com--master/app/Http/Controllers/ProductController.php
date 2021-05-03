<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
class ProductController extends Controller
{
    //
    public function getDanhsach(){
        $theloai=Category::all();
    	$product=Product::all();
    	return view('admin.product.danhsach',['product'=>$product,'theloai'=>$theloai]);
    }
    public function getThem(){
        $theloai=Category::all();
    	return view('admin.product.them',['theloai'=>$theloai]);
    }
    public function postThem(Request $request){
    	$this->validate($request,[
    		'name'=>'required|min:3|max:100',
            'price'=>'required'
            ],
    		[
    		'name.required'=>'Bạn chưa nhập tên thể loại',
    		'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
    		'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            'price.required'=>'Bạn chưa nhập giá sản phẩm'
            ]);
    	$product=new Product;
    	$product->name=$request->name;
        $product->id_category=$request->theloai;
        $product->overview=$request->overview;
        $product->content=$request->ten;
        $product->price=$request->price;
        $product->discount=$request->discount;
        $product->is_active=$request->is_active;
        if($request->hasFile('image'))
        {
            $file=$request->file('image');
            $duoi=$file->getClientOriginalExtension();
            if($duoi!='jpg'&& $duoi !="png" &&$duoi !='jgep'){
                return redirect('admin/product/them')->with('thongbao','Bạn chọn đuôi file không hợp lệ');
            }
            $name=$file->getClientOriginalName();
            $hinh=str_random(4)."_".$name;
            // xử lý hình có tên giống nhau
            while (file_exists("upload/product/".$hinh)) {
                # code...
                $hinh=str_random(4)."_".$name;
            }
            $file->move('upload/product',$hinh);
            $product->image=$hinh;
        }
        else
        {
            $product->image="";
        }
    	$product->save();
    	return redirect('admin/product/danhsach')->with('thongbao','Thêm thành công');
    }
    public function getSua($id){
        $theloai= Category::all();
        $product=Product::find($id);
        return view ('admin.product.sua',['product'=>$product,'theloai'=>$theloai]);
    }
    public function postSua(Request $request,$id){
        $this->validate($request,[
            'name'=>'required|min:3|max:100',
            'price'=>'required'
            ],
            [
            'name.required'=>'Bạn chưa nhập tên thể loại',
            'name.min'=>'Tên thể lọa có độ dài từ 3 cho đến 100 ký tự',
            'name.max'=>'Tên thể loại phải có độ dài từ cho đến 100 ký tự',
            'price.required'=>'Bạn chưa nhập giá sản phẩm'
            ]);
        $product=Product::find($id);
        $product->name=$request->name;
        $product->id_category=$request->theloai;
        $product->overview=$request->overview;
        $product->content=$request->ten;
        $product->price=$request->price;
        $product->discount=$request->discount;
        $product->is_active=$request->is_active;
        if($request->hasFile('image'))
        {
            $file=$request->file('image');
            $duoi=$file->getClientOriginalExtension();
            if($duoi!='jpg'&& $duoi !="png" &&$duoi !='jgep'){
                return redirect('admin/product/them')->with('thongbao','Bạn chọn đuôi file không hợp lệ');
            }
            $name=$file->getClientOriginalName();
            $hinh=str_random(4)."_".$name;
            // xử lý hình có tên giống nhau
            while (file_exists("upload/product/".$hinh)) {
                # code...
                $hinh=str_random(4)."_".$name;
            }
            $file->move('upload/product',$hinh);
            $product->image=$hinh;
        }
        else
        {
            $product->image="";
        }
        $product->save();
        return redirect('admin/product/danhsach')->with('thongbao','Sửa thành công');
    }
    public function getXoa($id){
        $product=Product::find($id);
        $product->delete();
        return redirect('admin/product/danhsach')->with("thongbao",'Xóa thành công');
    }

}
