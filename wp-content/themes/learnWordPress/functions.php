<?php
// get static file in our project
function learningWP_usef_resources(){
    //declaring css file 
    wp_enqueue_style("style", get_stylesheet_uri());//get the main stylesheet.
    wp_enqueue_style("bootstrap", get_template_directory_uri() . '/css/bootstrap.min.css');
    //declaring jquery and javascript file 
    wp_enqueue_script( 'jquery-3.3.1.min', get_template_directory_uri() . '/js/jquery-3.3.1.min.js' );
    wp_enqueue_script( 'usef', get_template_directory_uri() . '/js/usef.js');
}
add_action("wp_enqueue_scripts","learningWP_usef_resources");


// Navigation menus
register_nav_menus(array(
	'primary' => __('Primary Menu'),
	'footer' => __('Footer Menu')
));
//Primary Menu & Footer Menu are the name which display in appearance-> menus of admin page.
//primary and footer are the name we set in footer and header at functin wp_nav-menu ($args)
//with $args is array which have attribute 'theme_postion' is footer or primary.
//After all code here, we go to admin manage to set which page display in each menu and postion
// of each one.
?>
