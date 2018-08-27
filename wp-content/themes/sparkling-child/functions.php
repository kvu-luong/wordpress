<?php
/**
 * Nhúng tập tin /inc/init.php vào để load một số chức năng trong website
 */
require dirname( __FILE__ ) . '/inc/init.php';

/**
 * Các thiết lập liên quan đến theme
 */
function usef_theme_setup() {
    add_image_size( 'sanpham_thumb', 370, 300, false );
}
add_action('init', 'usef_theme_setup', 10);

/**
 * Xóa style.css của child-theme.
 */
function remove_default_styles() {
    wp_dequeue_style( 'sparkling-style' );
}
add_action('wp_print_styles', 'remove_default_styles', 10 );

/**
 * Đăng ký handle cho style.css của theme mẹ
 * Và sử dụng như một thành phần phụ thuộc của style.css theme con
 */
function usef_load_theme_style() {
    wp_enqueue_style('parent-styles', get_template_directory_uri() . '/style.css');
    wp_enqueue_style('child-styles', get_stylesheet_directory_uri() . '/style.css', array('parent-styles'));
}
add_action('wp_enqueue_scripts', 'usef_load_theme_style', 15 );

/**
 * @param $classes
 * @return array
 * Thêm class even vào các sản phẩm số chẵn trong loop
 */
function usef_grid_classes($classes) {
    if( is_archive() ) {
        global $wp_query;
        $classes[] = ( $wp_query->current_post%2 === 0 ? 'odd' : 'even' );
    }
    return $classes;
}
add_filter('post_class', 'usef_grid_classes');

/**
 * @param $query
 * Thiết lập hiển thị post type `sanpham` ngoài trang chủ.
 */
function usef_product_home1($query) {
    if ( $query->is_home() && $query->is_main_query() ) {
        $query->set( 'post_type', 'sanpham' );
    }
}
add_filter('pre_get_posts', 'usef_product_home1');