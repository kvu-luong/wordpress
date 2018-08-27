<?php
/*
 Template Name: Home_Page_2
*/
get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">
    <section class="color-wrap main-content color-wrap-new">
        <div class="container">
            <div class="row">
                    <div class="col-md-12">
                        <?php 
                            wp_reset_query();
                            $text_main = get_field("main_text");
                            $line1 = get_field("line1");
                            $line2 = get_field("line2");
                            $line3 = get_field("line3");
                            $tag =  get_field("tag_label");
                        ?>
                        <form action="" id="form-subscription-of-time-new">
                                <h1 class="col-sm-12 col-md-6 col-md-push-3 text-center"><?php echo $text_main ?></h1>
                                
                                <div class="col-md-12">
                                    <div class="radio-subcription-new col-xs-4 col-md-6 text-right">
                                    <!-- <?php bloginfo('stylesheet_directory') ?>/assets/img/tag.png -->
                                    <?php if(!empty($tag)){ ?>
                                            <img src="<?php echo $tag["url"];?>" id="tag_new" alt="best-offer">
                                    <?php } ?>
                                    </div>
                                    <div class="contain-radio-new col-xs-8 col-md-6">
                                        <div class="line-radio">
                                            <input type="radio" value="12" name="radio-custom" id="r1" checked="checked">
                                            <label for="r1"><?php echo $line1; ?></label>
                                        </div>
                                        <div class="line-radio">
                                            <input type="radio" value="6" name="radio-custom" id="r2">
                                            <label for="r2"><?php echo $line2; ?></label>
                                        </div>
                                        <div class="line-radio">
                                            <input type="radio" value="36" name="radio-custom" id="r3">
                                            <label for="r3"><?php echo $line3; ?></label>
                                        </div>
                                    </div>  
                                </div>
                        </form>
                    </div>
                        <div class="row">
                            <div class="col-md-12">
                                <img src="<?php bloginfo('stylesheet_directory') ?>/assets/img/full_magazine.png"  alt="div" class="divide-section-arrow-new">
                            </div>
                        </div>
            </div>
            <div class="row text-center">
                <?php
                wp_reset_query();
                    $subscribe = get_field("text1");
                    $text2 = get_field("text2");
                    $text3 = get_field("text3");
                    $image = get_field("image");
                ?>
                <div class="col-xs-12 col-sm-6 col-md-5 my-left-part-new">
                    <?php if($image){ ?>
                    <img src="<?php echo $image['url']; ?>" alt="magazine" class="img-order-myform-new">
                    <?php } ?>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-5 my-gift-subscription-new">
                    <p class="subscribe_new"><a href="http://localhost:8080/wordpress/wordpress_1/check-out/"><?php echo $subscribe ?></a></p>
                    <h2 class="h2-custom-new "><?php echo $text2 ?></h2>
                    <p class="p-new"><?php echo $text3 ?></p>
                </div>
            </div>
        </div>
    </section>
    </div><!-- #primary -->
    
    <?php 

get_footer();
?>