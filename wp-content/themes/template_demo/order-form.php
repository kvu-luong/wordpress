<?php
    /*
    Template Name: Order_Form
    */

    get_header();
?>
 <!--Main content-->
 <section class="color-wrap main-content color-wrap-new">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class=" text-center request-return">
                        <?php $main_text = get_field("main_text"); ?>
                        <h1><?php echo $main_text ?></h1>
                        <img src="<?php bloginfo("stylesheet_directory") ?>/assets/img/ads-3.png" alt="magazine" id="img-order">
                        <p id="info-get">Subscription Choice <span id="month-choosen">6 Months</span><span id="price">: RM000</span></p>
                    </div>
                    <form method="post" id="myform-fill-request" action="#">
                        <div class="row">
                            <div class="myinfo-fill col-sm-12 col-md-6 col-md-push-3">
                                <p>Please fill out the following:</p>
                                <label>EMAIL</label>
                                <input type="email" name="email">
                                <label>FIRST NAME</label>
                                <input type="text" name="first_name">
                                <label>LAST NAME</label>
                                <input type="text" name="last_name">
                                <label>PHONE<span class="required-sign">*</span></label>
                                <input type="text" required name="phone">
                                <label>MAILING ADDRESS 1</label>
                                <input type="text" name="mailing_address1">
                                <label>MAILING ADDRESS 2</label>
                                <input type="text" name="mailing_address2">
                                <label>ADDRESS</label>
                                <input type="text" name="address">
                                <label>CITY</label>
                                <input type="text" name="city">
                                <label>STATE</label>
                                <input type="text" name="state">
                                <label>POSTCODE</label>
                                <input type="text" name="postcode">
                                <label>COUNTRY</label>
                                <input type="text" name="country">
                                <?php 
                                    $day = date('l jS \of F Y h:i:s A');
                                ?>
                                <input type="hidden" name="checkout_day" value="<?php echo $day ?>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="mybilling-address col-sm-12 col-md-6 col-md-push-3">
                                <p>SHIP TO A DIFFERENT ADDRESS</p>
                                <input type="radio" id="billing-adress-option"  name="billing-address-rdio">
                                <label for="billing-adress-option"></label>
                                <div class="billing-check-or-not">
                                    <p class="form-billing-address-optional">
                                        <label>ADDRESS</label>
                                        <input type="text" name="address2">
                                        <label>CITY</label>
                                        <input type="text" name="city2">
                                        <label>STATE</label>
                                        <input type="text" name="state2">
                                        <label>POSTCODE</label>
                                        <input type="text" name="postcode2">
                                        <label>COUNTRY</label>
                                        <input type="text" name="country2">
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                             <div class="check_myform_new col-sm-12 col-md-6 col-md-push-3">
                                 <input type="radio" value="36" name="radio-custom" id="my_r4">
                                 <label for="my_r4" class="myorder-radio">To proceed for payment, check this box to express consent to the collection, collation, use and /or disclosure of the above data by Unreserved Medial Sdn Bhd for the purposes of subscribling to/purchase of the above item(s); and you agree to the terms and
                                 conditions of sale for the subscription you.</label>
                            </div> 
                        </div>
                        <div class="row col-sm-12 col-md-6 col-md-push-3 handle_two_button">
                                <a href="http://localhost:8080/wordpress/wordpress_1/home-page-order/"><input type="button" id="btn-sub-myform" class="btn-myback col-xs-12 col-sm-4" value="BACK TO HOME PAGE"></a>
                                <input type="submit" id="btn-sub-myform" name="subscribe" class="btn-mysubscribe col-xs-12 col-sm-4 col-sm-push-4" value="SUBSCRIBE NOW">
                        </div>
                    </form>
                </div>
            </div>
        </div>


    </section>

       <?php 

get_footer();
?>