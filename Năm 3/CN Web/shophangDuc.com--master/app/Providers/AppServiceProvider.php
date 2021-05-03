<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Cart;
use App\Category;
use Session;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('header',function($view){
        $category=Category::all();
        $view->with (['category',$category]);
    });
        view()->composer('header',function($view){
            if(Session('cart')){
            $oldCart=Session::get('cart');
            $cart=new Cart($oldCart);
            $view->with (['cart'=>Session::get('cart'),
            'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,
            'totalQty'=>$cart->totalQty]);
        }
        });
        
}
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
