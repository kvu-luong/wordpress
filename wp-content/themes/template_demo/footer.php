<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package website_one
 */

?>

	</div><!-- #content -->

	 <!-------------footer---------->
	 <footer class="footer footer-new">
        <div class="container">
            <div class="row">
                <form action="" class="col-sm-6 hidden-xs show-xs">
                    <p class="footer-text">Sign up for the unreserved newsletter</p>
                    <div class="subscribe">
                        <input type="email" name="EMAIL" placeholder="Enter your email..." required="">
                        <button type="submit">Subscribe</button>
                    </div>
                </form>
                <div class="col-sm-6 col-xs-12 footer-social">
                    <div class="footer-text footer-text-new">FOLLOW UNRESERVED</div>
                    <ul class="social social-new">
                        <li><a href="#"><span class="icon icon-face"></span></a></li>
                        <li><a href="#"><span class="icon icon-youtube"></span></a></li>
                        <li><a href="#"><span class="icon icon-twit"></span></a></li>
                        <li><a href="#"><span class="icon icon-insta"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="menu-footer menu-footer-new col-md-4 col-xs-12">
                    <ul>
                        <?php 
                        $titleOfAboutUsPage = get_the_title(74);//74 is the id of page about-us
                         ?>
                        <li><a href="<?php echo esc_url( get_permalink( get_page_by_title( $titleOfAboutUsPage ) ) ); ?>">about us</a></li>
                        <li><a href="#">contact us</a></li>
                        <li><a href="#">careers</a></li>
                        <li><a href="#">media kit</a></li>
                        <li><a href="#">cadvertising</a></li>
                        <li><a href="#">contests</a></li>
                        <li><a href="#">quiz</a></li>
                        <li><a href="#">creative services</a></li>
                        <li><a href="#">privacy policy</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-logo">
                <div class="row">
                    <div class="col-sm-4 col-md-2 footer-img">
                        <a href="#"><img src="<?php bloginfo('stylesheet_directory') ?>/assets/img/logo-white.svg" alt=""></a>
                    </div>
                    <div class="copy-right col-sm-8 col-md-5">
                        <p>©UNRESERVED. Use of this site constitutes acceptance of our<a href="#">User Agreement</a>and
                            <a href="#">Privacy Policy.</a>
                            <a href="#">Your CA Privacy Rights.</a> The Material on this site may not be reproduced, distributed, transmitted, cached or otherwise used, except with the prior written permission of UNRESERVED.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!------------//footer------------>
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
