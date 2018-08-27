<?php
/**
 * Plugin Name: Tweet Plugin Tutorial
 * Plugin URI: http://danielpataki.com
 * Description: This plugin adds a simple tweet link below posts.
 * Version: 1.0.0
 * Author: Usef
 * Author URI: http://danielpataki.com
 * License: GPL2
 */


function tweet_link( $content ) {
  return $content . '<p><a href="https://twitter.com/intent/tweet?url='.get_permalink().'">Tweet about this</a></p>';
}
add_action( 'the_content', 'tweet_link' );

?>
