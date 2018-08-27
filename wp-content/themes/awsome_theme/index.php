<?php get_header() ?>

<?php
	$args = array(
		'post_type'=>'post'
	);

	$post_query = new WP_Query($args);
 ?>

<?php 
	if($post_query-> have_posts() ) {
		while( $post_query -> have_posts() ) { 
			$post_query->the_post();
			get_template_part( 'template-parts/content', '' );
		}
	}
	else {
		get_template_part( 'template-parts/content', 'none' );
	}
?>

<?php get_footer() ?>