<?php
	/*
	Function for register form
	Created by : Usef
	*/

	add_action("wp_ajax_custom_login","handle_custom_login");
	function handle_custom_login(){
		print_r($_POST);
	}
?>