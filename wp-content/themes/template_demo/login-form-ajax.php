<?php
	/*
	Template Name: login Form Ajax
	*/
	get_header();
?>
<div class="row">
	<div class ="container text-center register_form">
		<div id="content" clas="site-content">
			<div id="full-width" class="powen-full-width-content-area">
				<form id="register-form" class="form-group" method="post" action="Javascript:void(0)">
					<!-- Javascript: void(0) => prevent refresh page -->
					<p><label>Username: <input type="text" name="login-username" required></label></p>
					<p><label>Password: <input type="password" name="login-password" required></label></p>
					<p>
						<label><input class="form-group btn btn-primary" id="RegisterForm" type="submit" value="Register"></label>
					</p>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script>
	    //login form method 1: create hook to check login

    jQuery(function(){            


        var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";//must be like this one
        jQuery("#RegisterForm").on("click",function(){
            var formdata = jQuery("#register-form").serialize();
            formdata += "&action=custom_login&param=login_test";
            jQuery.ajax({
                url: ajaxurl,
                data: formdata,
                type: "POST",
                success:function(response){
                	console.log(response);
                    var data = jQuery.parseJSON(response);
                    if(data.status == 1){
                    	window.location = "<?php echo home_url("/home-page-order/"); ?>";
                    	console.log("hello 1");
                    }else{
                    	alert("Wrong username/password. ");
                    	console.log("<?php echo site_url(); ?> in wrong");
                    }  
                }              
            });
        });
    });
</script>
<?php
	get_footer();
?>