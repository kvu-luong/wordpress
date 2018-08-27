    <!-- site-footer -->
    <div class="container">
        <div class="footer">
            <footer>
                
                <nav class="site-nav">
                    <?php
                        $args = array(
                            'theme_location' => 'footer'
                        );
                    ?>
                    <?php wp_nav_menu( $args ); ?>
                </nav>

                <p><?php bloginfo("name") ?> - &copy; <?php echo date("m-d-y") ?></p>
            </footer>
        </div>
    </div>
    <!-- end site-footer -->
    
    <?php wp_footer(); ?>
    </body>
<html>
