<?php
add_action( 'wp_enqueue_scripts', 'usef_styles' );
function usef_styles() {
	wp_enqueue_style( 'my-awesome-theme-styles', get_stylesheet_uri() );
	wp_enqueue_style( 'bootstrap4', get_stylesheet_uri()."/css/bootstrap.min.css" );
}

//add widget
add_action( 'widgets_init', 'usef_widget' );
function usef_widget() {
    register_sidebar( array(
        'name' => 'Theme Sidebar',
        'id' => 'mat-sidebar',
        'description' => 'The main sidebar shown on the right in our awesome theme',
        'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget'  => '</li>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
    ));
}
//get excerpt
// function custom_get_excerpt($content, $length = 50){
// 	if(strlen($content) <= $length){    
// 		return $content;
// 	}
// 	$excerpt = substr($content , 0 , $length);
// return $excerpt;

// }
// add_filter( 'get_the_excerpt', 'custom_get_excerpt' );
// Changing excerpt length
function new_excerpt_length($length) {
return 100;
}
add_filter('excerpt_length', 'new_excerpt_length');
 
// Changing excerpt more
function new_excerpt_more($more) {
return ' <a>Continuing Reading &raquo;</a>	';
}
add_filter('excerpt_more', 'new_excerpt_more');

