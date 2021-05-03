<?php
/**
 * Flatsome functions and definitions
 *
 * @package flatsome
 */

require get_template_directory() . '/inc/init.php';

/**
 * Note: It's not recommended to add any custom code here. Please use a child theme so that your customizations aren't lost during updates.
 * Learn more here: http://codex.wordpress.org/Child_Themes
 */

//Create Vertical Mega Menu
	register_nav_menus(array('Vertical'=>esc_html__('Vertical Menu','Flatsome'),));

//Thay doi tien te
add_filter('woocommerce_currency_symbol', 'change_existing_currency_symbol', 10, 2);

function change_existing_currency_symbol( $currency_symbol, $currency ) {
 switch( $currency ) {
 case 'VND': $currency_symbol = 'VNĐ'; break;
 }
 return $currency_symbol;

}

//ADD TO CART BUTTON TO PER PRODUCT
    add_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_add_to_cart', 10 );


//Add fontawesome
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );

function theme_enqueue_styles() {
 wp_enqueue_style( 'fontawesome-style', get_stylesheet_directory_uri() .'/assets/css/font-awesome.min.css' );
}
