<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Feedback;
use Cart,DB;
use Session;
class PageController extends Controller
{
	function _construct(){
	    $theloai=Category::all();
	    view()->share('theloai',$theloai);
	}
	public function trangchu(){
    $theloai=Category::all();
    $product=Product::all();
    return view('pages.trangchu',['theloai'=>$theloai,'product'=>$product]);
	}
	public function getLogin(){
		return view('pages.loginfont');
	}
	public function getTintuc(){
		return view('pages.tintuc');
	}
	public function getGioithieu(){
		return view('pages.gioithieu');
	}
	public function getHuongdan(){
		return view('pages.huongdan');
	}
	public function getLienhe(){
		return view('pages.lienhe');
	}
	public function sanpham(){
    $theloai=Category::all();
    $product=Product::all();
    return view('pages.sanpham',['theloai'=>$theloai,'product'=>$product]);
	}
	public function getsanpham($id_category){
		$theloai=Category::find($id_category);
    	$product=Product::where('id_category',$id_category)->paginate(3);
    	return view('pages.sanpham',['theloai'=>$theloai,'product'=>$product]);
	}

	public function getViewsanpham($id){
		$viewsanpham=Product::find($id);
		$feedback= Feedback::all();
		return view ('pages.viewsanpham',['viewsanpham'=>$viewsanpham,'feedback'=>$feedback]);
	}
	function timkiem(Request $request){
		$tukhoa=$request->tukhoa;
		$product=Product::where('name','like',"%$tukhoa%")->orWhere('overview','like',"%$tukhoa%")->orWhere('content','like',"%$tukhoa%")
		->take(2)->paginate(4);
		return view('pages.timkiem',['product'=>$product,'tukhoa'=>$tukhoa]);
	}

	public function muahang($id){
        $product_buy=DB::table('product')->where('id',$id)->first();
        Cart::add(array('id'=>$id,'name'=>$product_buy->name,'qty'=>$product_buy->qty,'price'=>$product_buy->price,'option'=>array('image'=>$product_buy->image)));
        $content=Cart::content();
        return redirect()->guest(route('giohang'));
    }

    public function giohang(){
    	$content=Cart::content();
    	$total=Cart::total();
    	return view('pages.muahang',compact('content','total'));
    }

    public function xoasanpham($id){
    	$rowId='027c91341fd5cf4d2579b49c4b6a90da';
    	Cart::remove($rowId);
    	return redirect()->route('giohang');
    }
	
}
