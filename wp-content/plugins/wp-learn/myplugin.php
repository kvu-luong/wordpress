<?php
/*
	Plugin Name: My First Plugin
	Plugin URI: http://localhost:8080/wordpress/wordpress_1/myplugin
	Description: My first Plugin
	Author: Usef
	Version: 1.0
*/
$plugins = array();
$active = array();
	function usef_active_plugins(){
		global $plugins, $active;

		$plugins = get_plugins();//get all plugins

		foreach($plugins as $file => $data){
			if(is_plugin_active($file)){

				$active[$file] = get_plugin_data(WP_PLUGIN_DIR."/$file");
				//get all active plugin , then put it in $active[];
				}
		}

		wp_add_dashboard_widget('usef_active_plugins','Show All Active Plugin', 'active_plugins_dashboard_widget');
		//display on dashboard;
	}

	function active_plugins_dashboard_widget(){
		global $plugins , $active;

		print("<ul>");

		foreach($active as $plugin){//get each plugin and print it out.
			print("<li>{$plugin['Title']} by {$plugin['Author']}</li>");
		}

		print("</ul>");
	}
	add_action('wp_dashboard_setup','usef_active_plugins');//add to hook: wp_dashboard_setup.

	//when wp_dashboard_setup() executed -> it will call usef_active_plugins()
	//when usef_active_plugins() have been called -> wp_add_dashboard_widget() will be call. 
	//when wp_add_dashboard_widget executed which set name "Show All Active Plugin" on dashboard.
	//So the information in function active_plugins-dashboard_widget();
?>