<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Category;
Route::get('/', function () {
    return view('welcome');
});
Route::get('admin/login','UsersController@getdangnhapAdmin');
Route::post('admin/login','UsersController@postdangnhapAdmin');
Route::get('admin/logout','UsersController@getdangxuatAdmin');
Route::group(['prefix'=>'admin'],function(){

	Route::group(['prefix'=>'category'],function(){

		Route::get('danhsach','CategoryController@getDanhsach');

		Route::get('sua/{id}','CategoryController@getSua');
		Route::post('sua/{id}','CategoryController@postSua');

		Route::get('them','CategoryController@getThem');
		Route::post('them','CategoryController@postThem');

		Route::get('xoa/{id}','CategoryController@getXoa');
	});
	Route::group(['prefix'=>'contact'],function(){
		Route::get('danhsach','ContactController@getDanhsach');
		Route::get('sua','ContactController@getSua');
		Route::get('them','ContactController@getThem');
		Route::post('them','ContactController@postThem');
	});
	Route::group(['prefix'=>'customer'],function(){
		Route::get('danhsach','CustomerController@getDanhsach');

		Route::get('sua/{id}','CustomerController@getSua');
		Route::post('sua/{id}','CustomerController@postSua');

		Route::get('them','CustomerController@getThem');
		Route::post('them','CustomerController@postThem');

		Route::get('xoa/{id}','CustomerController@getXoa');
	});
	Route::group(['prefix'=>'news'],function(){
		Route::get('danhsach','NewsController@getDanhsach');

		Route::get('sua/{id}','NewsController@getSua');
		Route::post('sua/{id}','NewsController@postSua');

		Route::get('them','NewsController@getThem');
		Route::post('them','NewsController@postThem');

		Route::get('xoa/{id}','NewsController@getXoa');

	});

	Route::group(['prefix'=>'order_product'],function(){
		Route::get('danhsach','Order_productController@getDanhsach');

		Route::get('sua/{id}','Order_productController@getSua');
		Route::post('sua/{id}','Order_productController@postSua');
		
		Route::get('them','Order_productController@getThem');
		Route::post('them','Order_productController@postThem');
	});
	Route::group(['prefix'=>'order_detail'],function(){
		Route::get('danhsach','Order_detailController@getDanhsach');
		Route::get('sua','Order_detailController@getSua');
		Route::get('them','Order_detailController@getThem');
	});
	Route::group(['prefix'=>'partner'],function(){
		Route::get('danhsach','PartnerController@getDanhsach');

		Route::get('sua/{id}','PartnerController@getSua');
		Route::post('sua/{id}','PartnerController@postSua');

		Route::get('them','PartnerController@getThem');
		Route::post('them','PartnerController@postThem');

		Route::get('xoa/{id}','PartnerController@getXoa');
	});
	Route::group(['prefix'=>'product'],function(){
		Route::get('danhsach','ProductController@getDanhsach');

		Route::get('sua/{id}','ProductController@getSua');
		Route::post('sua/{id}','ProductController@postSua');

		Route::get('them','ProductController@getThem');
		Route::post('them','ProductController@postThem');

		Route::get('xoa/{id}','ProductController@getXoa');

	});
	Route::group(['prefix'=>'users'],function(){
		Route::get('danhsach','UsersController@getDanhsach');

		Route::get('sua/{id}','UsersController@getSua');
		Route::post('sua/{id}','UsersController@postSua');

		Route::get('them','UsersController@getThem');
		Route::post('them','UsersController@postThem');

		Route::get('xoa','UsersController@getXoa');

	});
	Route::group(['prefix'=>'feedback'],function(){
		Route::get('danhsach','FeedbackController@getDanhsach');

		Route::get('sua/{id}','FeedbackController@getSua');		
		Route::post('sua/{id}','FeedbackController@postSua');

		Route::get('them','FeedbackController@getThem');
		Route::post('them','FeedbackController@postThem');

		Route::get('xoa/{id}','FeedbackController@getXoa');
	});
});
	Route::get('trangchu','PageController@trangchu');
	Route::get('sanpham','PageController@sanpham');
	Route::get('sanpham/{id_category}','PageController@getSanpham');
	Route::get('viewsanpham/{id}','PageController@getViewsanpham');
	Route::get('loginfont','PageController@getLogin');
	Route::get('gioithieu','PageController@getGioithieu');
	Route::get('tintuc','PageController@getTintuc');
	Route::get('huongdan','PageController@getHuongdan');
	Route::get('lienhe','PageController@getLienhe');
	

	Route::post('timkiem','PageController@timkiem');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
// facebook
Route::get('auth/facebook', 'Auth\LoginController@redirectToProvider');
Route::get('shophangDuc.com-/public', 'Auth\LoginController@handleProviderCallback');

Route::get('muahang/{id}/{tensanpham}','PageController@muahang');
Route::get('gio-hang',['as'=>'giohang','uses'=>'PageController@giohang']);
Route::get('xoa-san-pham/{id}',['as'=>'xoasanpham','uses'=>'PageController@xoasanpham']);
//Checkout:
Route::get('checkout','CheckoutController@getCheck');
Route::post('formvalidate','CheckoutController@getValidate');

// Generate dât to PDF
Route::get('getPDF','PDFController@getPDF');
Auth::routes();
