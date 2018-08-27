<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package website_two
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<!-- <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/fonts/font-family.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/reset.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/slick-theme.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/slick.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/custom.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/bootstrap3.min.css">

    <script src="<?php bloginfo('stylesheet_directory') ?>/assets/js/jquery-1.12.4.min.js"></script>
    <script src="<?php bloginfo('stylesheet_directory') ?>/assets/js/bootstrap.min.js"></script>
    <script src="<?php bloginfo('stylesheet_directory') ?>/assets/js/slick.min.js"></script>
    <script src="<?php bloginfo('stylesheet_directory') ?>/assets/js/custom.js"></script> -->
	 <?php wp_head(); ?> <!-- Declaring head tag in wordpress -->
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'theme_demo' ); ?></a>

	<!-- header -->
    <header class="header header-pc">
                <div class="container">
                        <div class="logo-lg">
                            <div class="ads-header">
                                <div class="ads-header-img">
                                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/left-logo.png" alt="left-logo">
                                </div>
                                <div class="ads-text">Get 12 issues for only RM180 + <br> FREE digital access!
                                    <button>SUBSCRIBE</button>
                                </div>
                            </div>
                            <div class="row">
                                <div  class="my_logo col-xs-10 col-sm-11 col-md-12 text-center">
                                    <a href="#" class="logo-black"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/logo.svg" alt="logo"></a>
                                    <a href="#" class="logo-white"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/logo-white.svg" alt="logo"></a>
                                </div>
                            </div>
                            <div>
                                <div class="menu-icon my-menu-icon col-xs-2 col-sm-1 text-center">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                </div>
                        <!-- //the_ID()
                                 // echo get_page_link(22)."----";
                                 //the_title() -> get current page title

                                 // echo get_the_title(32); -->
                            

        <nav class="navbar navbar-home">
                    <div class="container navbar-wrap">
                            <div class="hidden-lg hidden-md search-mb">
                                <button type="submit"><span class="icon-search"></span></button>
                                <input type="text">
                            </div>

                            <!-- display when click on menu icon -->
                            <ul class="menu-top">
                                <li class="menu-item-has-children"><a href="#">culture</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">BLACK BOOK</a></li>
                                        <li><a href="#">ENTERTAINMENT</a></li>
                                        <li><a href="#">HUMANITIES</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">life</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">ACQUIRED TASTE</a></li>
                                        <li><a href="#">FOOD & DINING</a></li>
                                        <li><a href="#">PROPERTY & LIVING</a></li>
                                        <li><a href="#">STYLE</a></li>
                                        <li><a href="#">TRAVEL</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">current affairs</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">BUSINESS</a></li>
                                        <li><a href="#">CRIME</a></li>
                                        <li><a href="#">INTERNATIONAL RELATIONS</a></li>
                                        <li><a href="#">NEWS COMMENTARY</a></li>
                                        <li><a href="#">SPORTS</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Newsmakers</a></li>
                                <li class="menu-item-has-children"><a href="#">Extras</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">BRANDED CONTENT</a></li>
                                        <li><a href="#">REGIONAL FOCUS</a>
                                            <ul class="sub-menu-2">
                                                <li><a href="#">Brunei</a></li>
                                                <li><a href="#">Cambodia</a></li>
                                                <li><a href="#">Indonesia</a></li>
                                                <li><a href="#">Laos</a></li>
                                                <li><a href="#">Malaysia</a></li>
                                                <li><a href="#">Myanmar</a></li>
                                                <li><a href="#">Phillippines</a></li>
                                                <li><a href="#">Singapore</a></li>
                                                <li><a href="#">Thailand</a></li>
                                                <li><a href="#">Timor-Leste</a></li>
                                                <li><a href="#">Vietnam</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">QUARTERLY SPECIALS</a></li>
                                        <li><a href="#">QUIZ</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="social">
                                <li><a href="#"><span class="icon icon-face"></span></a></li>
                                <li><a href="#"><span class="icon icon-youtube"></span></a></li>
                                <li><a href="#"><span class="icon icon-twit"></span></a></li>
                                <li><a href="#"><span class="icon icon-insta"></span></a></li>
                                <li class="search">
                                    <button type="submit"><span class="icon-search"></span></button>
                                    <div class="input-search"><input type="text"></div>
                                </li>
                            </ul>
                    </div>
        </nav>
    </header>
    <!------------//header------------>

	<div id="content" class="site-content">
