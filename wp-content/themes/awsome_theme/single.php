
<?php get_header() ?>


<div id="article">
  <h2 class="article-title"><?php the_title() ?></h2>
  <div class="article-content">
  	<?php
  	while(have_posts()){
  		the_post(); ?>
	  		<p><?php  the_content(); ?> </p>
	  		<blockquote>hello single</blockquote>
  		<?php
  	}
  ?>
  <div class="article-meta">Published on <?php the_time( "Y-m-d" ) ?> by <?php the_author() ?></div>
</div>

<?php get_sidebar() ?>

<?php get_footer() ?>