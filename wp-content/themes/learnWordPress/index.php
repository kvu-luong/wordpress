<?php get_header(); ?>
<?php
    $args = array(
        'post_type' => 'post'
    );

    $post_query = new WP_Query($args);

    if($post_query->have_posts() ) {
        while($post_query->have_posts() ) {
        $post_query->the_post();
        ?>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <a href="<?php the_permalink(); ?>"><h2><?php the_title(); ?></h2></a>
                    <h2 class="post"><?php the_content(); ?></h2>
                    <!-- <h2><?php the_category(); ?></h2> -->
                </div>
            </div>
        </div>

        <?php
        }
    }
?>
<?php get_footer() ?>
