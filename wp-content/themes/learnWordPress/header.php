<html <?php language_attributes(); ?>>
    <head>
        <title> <?php bloginfo("name") ?></title>
        <meta charset="<?php bloginfo('charset'); ?>" >
        <meta name="viewport" content="width= device-width" >
        <?php wp_head();?>
    </head>

    <body <?php body_class(); ?>>

    <!-- site-header -->
    <div class="container">
            <header class="site-header">
                <h1><a href="<?php echo home_url(); ?>"><?php bloginfo('name') ;?></a></h1>
                <h4><?php bloginfo("description"); ?></h4>
                    <?php
                        $args = array(
                            'theme_location' => 'primary'
                        );
                    ?>
                     <?php wp_nav_menu( $args ); ?>
                </nav>
            </header>
    </div>
    <!-- end site-header -->
