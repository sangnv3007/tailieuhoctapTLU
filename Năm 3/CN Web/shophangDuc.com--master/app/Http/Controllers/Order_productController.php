<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order_product;
use App\Customer;
class Order_productController extends Controller
{
    //
    public function getDanhsach(){
    	$order_product=Order_product::all();
    	return view('admin.order_product.danhsach',['order_product'=>$order_product]);
    }
    public function getThem(){
        $khachhang= Customer::all();
        $product=Order_product::all();
        return view ('admin.order_product.them',['product'=>$product,'khachhang'=>$khachhang]);
    }
     public function postThem(Request $request){ 
        $product= new Order_product;
        $product->id_customer=$request->id_customer;
        $product->order_note=$request->order_note;
        $product->payment=$request->payment;
        $product->total=$request->total;
        $product->order_status=$request->order_status;
        $product->save();
        return redirect('admin/order_product/danhsach')->with('thongbao','Sửa thành công');
    }
    public function getSua($id){
        $khachhang= Customer::all();
        $product=Order_product::find($id);
        return view ('admin.order_product.sua',['product'=>$product,'khachhang'=>$khachhang]);
    }
    public function postSua(Request $request,$id){
        $product= Order_product::find($id);
        $product->id_customer=$request->id_customer;
        $product->order_note=$request->order_note;
        $product->payment=$request->payment;
        $product->total=$request->total;
        $product->order_status=$request->order_status;
        $product->save();
        return redirect('admin/order_product/danhsach')->with('thongbao','Sửa thành công');
    }
    public function getXoa($id){
        $product=Order_product::find($id);
        $product->delete();
        return redirect('admin/product/danhsach')->with("thongbao",'Xóa thành công');
    }

}


