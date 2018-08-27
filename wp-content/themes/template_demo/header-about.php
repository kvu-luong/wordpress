<head>
	<title>About Page</title>
	 <!-- Required meta tags -->
	 <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

     <!-- <link rel="stylesheet" type="text/css" href="<?php bloginfo("stylesheet_directory") ?>/assets/css/bootstrap3.min.css">
	<link rel="stylesheet" type="text/css" href="<?php bloginfo("stylesheet_directory") ?>/assets/css/font-awesome.min.css"> -->

	<!-- main header -->
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

	<?php wp_head(); ?>
</head>
<body>
	<!-- start header -->
	<div class="header">
		<div class="row">
			<div class="upper_header">
				<nav class="navbar navbar-default" role="navigation">
							<div class="container">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="#">ZAPTODESIGN</a>
								</div>
							
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse navbar-ex1-collapse">
									<?php
									wp_reset_query();
										$tilteOfHomeOrderPage = get_the_title(22); //22 is id of home order page
									 ?>
									<ul class="nav navbar-nav">
										<li ><a href="<?php echo esc_url( get_permalink( get_page_by_title($tilteOfHomeOrderPage) ) ); ?>">HOME</a></li>
										<li class="active"><a href="#">ABOUT US</a></li>
										<li ><a href="#">OUR WORK</a></li>
										<li><a href="#">OUR BLOGS</a></li>
										<li ><a href="#">OUR SERVICES</a></li>
										<li><a href="#">CONTACT US</a></li>
									</ul>
									<ul class="nav navbar-nav navbar-right">
										<li><a href="#"><span class="fa fa-bars fa-2x"></span></a></li>
									</ul>
								</div><!-- /.navbar-collapse -->
							</div>
				</nav>
			</div>
		</div>
		<div class="row text-center">
			<div class="lower_header">
				<div class="col-xs-12">
					<h1>ABOUT US</h1>
					<h4>COMPANY HISTORY</h4>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->