<?php
/**
 * website_one functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package website_one
 */

if ( ! function_exists( 'website_one_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function website_one_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on website_one, use a find and replace
		 * to change 'website_one' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'website_one', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'website_one' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'website_one_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'website_one_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function website_one_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'website_one_content_width', 640 );
}
add_action( 'after_setup_theme', 'website_one_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function website_one_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'website_one' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'website_one' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'website_one_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function website_one_scripts() {
	wp_enqueue_style( 'website_one-style', get_stylesheet_uri() );

	wp_enqueue_script( 'website_one-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'website_one-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	wp_enqueue_style( 'font_family', get_template_directory_uri() . '/assets/fonts/font-family.css');
	wp_enqueue_style( 'reset', get_template_directory_uri() . '/assets/css/reset.css' );
	wp_enqueue_style( 'bootstrapcss', get_template_directory_uri() . '/assets/css/bootstrap.min.css' );
	wp_enqueue_style( 'slicktheme', get_template_directory_uri() . '/assets/css/slick-theme.css' );
	wp_enqueue_style( 'slickcss', get_template_directory_uri() . '/assets/css/slick.css' );
	wp_enqueue_style( 'font_awesome', get_template_directory_uri() . '/assets/css/font-awesome.min.css' );
	wp_enqueue_style( 'custom', get_template_directory_uri() . '/assets/css/custom.css' );
	wp_enqueue_style( 'style', get_template_directory_uri() . '/assets/css/style.css' );
	wp_enqueue_style( 'bootstrap3', get_template_directory_uri() . '/assets/css/bootstrap3.min.css' );
	wp_enqueue_script( 'jqueryMin', get_template_directory_uri() . '/assets/js/jquery-1.12.4.min.js' );
	wp_enqueue_script( 'bootstrapjs', get_template_directory_uri() . '/assets/js/bootstrap.min.js' );
	wp_enqueue_script( 'slickjs', get_template_directory_uri() . '/assets/js/slick.min.js' );
	wp_enqueue_script( 'customjs', get_template_directory_uri() . '/assets/js/custom.js' );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'website_one_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}



add_action('init', 'myStartSession', 1);
add_action('wp_logout', 'myEndSession');
add_action('wp_login', 'myEndSession');

function myStartSession() {
    if(!session_id()) {
        session_start();
    }
}

function myEndSession() {
    session_destroy ();
}

// Login form functions
if(isset($_POST['btn-submit'])){
	// print_r($_POST);
	// die;
	global $wpdb;
	$data_array = array(
		'username' => $_POST['username1'],
		'password' => $_POST['password1']
	);

	$table_name = 'register';

	//check user exist or not 
	//check login
	//$url = "http://localhost:8080/wordpress/wordpress_1/home-page-order/";
	$allUser = $wpdb->get_results( "SELECT * FROM register" );
	foreach( $allUser as $user){
		if($user->username == $_POST['username1'] && $user->password == $_POST['password1']){
			$url = home_url("/home-page-order");
			wp_redirect($url);
			exit;
		}
	}
	echo '<h1>Login Error</h1>';
	$url1 = home_url("/");
	wp_redirect($url1);
	exit;


}
// register form
if(isset($_POST['register-submit'])){
	// print_r($_POST);
	// die;
	global $wpdb;
	$password = $_POST['password'];
	$confirm_password = $_POST['confirm-password'];
	$username =  $_POST['username'];
	$email = $_POST['email'];
	$data_array = array(
		'username' =>$username,
		'password' => $password,
		'email' => $email
	);

	$table_name = 'register';
	//$url = "http://localhost:8080/wordpress/wordpress_1/home-page-order/";
	//check user exist or not 
	if($password === $confirm_password ){
			$allUser = $wpdb->get_results("SELECT * FROM register where username = '".$username."'");
			// var_dump($wpdb->last_query);
			// var_dump($allUser);
			// echo count($allUser);
			// die;
			if(count($allUser) !== 0){//check database empty or not
						echo "<p>Username already existed</p>";
			}
			if($allUser == NULL){
				$rowResult = $wpdb->insert($table_name, $data_array, $format= NULl);
				if($rowResult == 1){
					$url = home_url("/home-page-order");
					wp_redirect($url);
					exit;
				}
			}
	}else{
		echo "Check Your Input";
	}
}

if(isset($_POST['subscribe'])){
	 // print_r($_POST);
	// die;
	global $wpdb;
	$data_array = array(
		'email'=>'email',
		'first_name'=>$_POST['first_name'],
		'last_name' => $_POST['last_name'],
		'phone' => $_POST['phone'],
		'mailing_address1'=>$_POST['mailing_address1'],
		'mailing_address2'=>$_POST['mailing_address2'],
		'address' => $_POST['address'],
		'city' => $_POST['city'],
		'state'=>$_POST['state'],
		'postcode'=>$_POST['postcode'],
		'country' => $_POST['country'],
		'address2' => $_POST['address2'],
		'city2'=>$_POST['city2'],
		'postcode2'=>$_POST['postcode2'],
		'country2' => $_POST['country2'],
		'checkout_day' => $_POST['checkout_day'],
		'billing_address'=> $_POST['billing-address-rdio']
	);

	$data_table = "checkout";

	$insertResult = $wpdb->insert($data_table, $data_array, $format = NULL);
	
	var_dump($wpdb->last_query);
	// var_dump($insertResult);
	// $url = "http://localhost:8080/wordpress/wordpress_1/home-page-order/";
	if($insertResult == 1){
		echo '<h1>Checkout Successfull</h1>';
		$url = home_url("/home-page-order");
		wp_redirect($url);
		exit;
	}else{
		echo '<h1>CheckOut Error</h1>';
	}
	wp_reset_query();
die;
}


//test register form with ajax

	add_action("wp_ajax_custom_login","handle_custom_login");
	//function when input right username and password

	add_action("wp_ajax_nopriv_custom_login","handle_custom_login");//when we not log in yet, unauthorization
	function handle_custom_login(){
		$param = isset($_REQUEST['param'])?trim($_REQUEST['param']):"";
		if($param == "login_test"){
			$info= array();
			$info['user_login']  = $_POST['login-username'];
			$info['user_password']  = $_POST['login-password'];

			$user_signon = wp_signon($info, false);

			if(is_wp_error($user_signon)){
				echo json_encode(array("status" => 0));
			}else{
				echo json_encode(array("status" => 1));
			}

		}
		wp_die();
	}


?>
