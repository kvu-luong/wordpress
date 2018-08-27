
jQuery(document).ready(function ($) {

    // $('.menu-icon').click(function () {
    //     $(this).toggleClass('open');
    //     $(".menu-top").toggleClass("active");
    // });

    $('.menu-icon').click(function () {//ok
        $(this).toggleClass('open');
        $(".header").toggleClass("header-mobile");
    });
    if (screen.width < 992) {//ok
        $(".header").removeClass("header-pc");//display details
    }

    if (screen.width <= 991) {   //control scroll bar
        if ($('.logo-lg').length) {
            var secondaryNav = $('.logo-lg');
            var secondaryNavTopPosition = secondaryNav.offset().top;
    
            $(window).on('scroll', function () {
                if ($(window).scrollTop() > secondaryNavTopPosition) {
                    //fix secondary navigation
                    $('.logo-lg').addClass('is-fixed');
                    $('.navbar').addClass('navbar-pd');
                
                } else {
                    $('.logo-lg').removeClass('is-fixed');
                    $('.navbar').removeClass('navbar-pd');
                }
            });
        }
        }
    if (screen.width >= 992) {
        if ($('.navbar-home').length) {
            var secondaryNav = $('.navbar-home'),
                secondaryNavTopPosition = secondaryNav.offset().top;

            $(window).on('scroll', function () {
                if ($(window).scrollTop() > secondaryNavTopPosition) {
                    //fix secondary navigation
                    $('.navbar-home').addClass('is-fixed');
                    $('.header').removeClass('header-mobile');
                    $('.menu-icon').removeClass('open');
                } else {
                    $('.navbar-home').removeClass('is-fixed');
                }
            });
        }
    }
    


    $(document).on('mouseenter', '.navbar.is-fixed .menu-top>li', function (e) {
        $('.layout-mask').show();
    });
    $(document).on('mouseleave', '.navbar.is-fixed .menu-top>li', function (e) {
        $('.layout-mask').hide();
    });
    $(window).on('scroll', function (e) {

    });

    $(window).scroll(function () {
        clearTimeout($.data(this, 'scrollTimer'));
        $.data(this, 'scrollTimer', setTimeout(function () {
            if (!$('.navbar').hasClass('is-fixed')) {
                $('.layout-mask').hide();
            }
        }, 250));
    });
    /*
        function setPositionSlide() {
            var heightImageTop = $('.slider-top .slick-active .news-img img').height();
            $('.slider-top .slick-prev').css("top", (heightImageTop / 2) + "px");
            $('.slider-top .slick-next').css("top", (heightImageTop / 2) + "px");
            $('.slider-top .slick-dots').css("top", (heightImageTop - 40) + "px");
            
            var heightImageBot = $('.slider-wrap .slick-active .news-img img').height();
            $('.slider .slick-prev').css("top", (heightImageBot / 2) + "px");
            $('.slider .slick-next').css("top", (heightImageBot / 2) + "px");
            $('.slider .slick-dots').css("top", (heightImageBot - 40) + "px");
        }
    */
    /*
    function setPositionSlideForPageEntering() {

        var heightImage = $('.slider-4 .slick-active .mycustomslider img').height();
        $('.slider-4  .slick-prev').css("top", (heightImage / 2) + "px");
        $('.slider-4 .slick-next').css("top", (heightImage / 2) + "px");


        var heightImageBot = $('.slider-wrap .slider-4 .slick-active .mycustomslider img').height();
        $('.slider-4 .slick-prev').css("top", (heightImageBot / 2) + "px");
        $('.slider-4 .slick-next').css("top", (heightImageBot / 2) + "px");


    }

    jQuery(window).load(function () {

        setPositionSlideForPageEntering();
    });

    jQuery(window).resize(function () {

        setPositionSlideForPageEntering();
    });

    $(document).on('click', '.navbar .search button', function (e) {
        $('.navbar .input-search').toggleClass("open");
    });

    $('.slider-top').slick({
        dots: true,
        infinite: true,
        speed: 500,
        slide: 'div',
        cssEase: 'linear'
    });
    /*
    $('.slider-2').slick({
        arrows: true,
        dots: false,
        infinite: true,
        speed: 500,
        slide: 'div',
        cssEase: 'linear'
    });*/

    // $('.slider-4').slick({
    //     dots: false,
    //     infinite: false,
    //     slidesToShow: 4,
    //     slidesToScroll: 4
    // });
    /*
    $('.radio-subcription .line-radio input[type=radio]').on('click',function(){
        var radioPosition = $(this).offset().top;
        alert(radioPosition);
     });*/
    
    $('input:radio[name="billing-address-rdio"]').prop('checked', false);
    $('input:radio[name="billing-address-rdio"]').change(
    function(){
        if ($(this).is(':checked')) {
             $('input:radio[name="billing-address-rdio"]').prop("checked",true);
            $(".billing-check-or-not").css("display","block");
            $('input:radio[name="billing-address-rdio"]').css("display","none");
        }else{
             $(".billing-check-or-not").css("display","none");
        }
    });


  


    /*
    $('#billing-adress-option').prop("checked", false) {
        $('.form-billing-address-optional').style.display = "none";
    }*/
    checkBrowser();

    $('#login-form-link').click(function(e) {
        console.log("helllo");
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });


});
checkBrowser();

function checkBrowser(){
    var ba = ["Edge","Chrome", "Firefox", "Safari", "Opera","MSIE", "Trident",];
    var browser, ua = navigator.userAgent;
    for(var i = 0; i< ba.length ; i ++){
        if(ua.indexOf(ba[i]) > -1){
            browser = ba[i];
            break;
        }
    }
    console.log(ua);
    if(browser == "MSIE" || browser == "Trident" || browser == "Edge"){
        browser = "Internet Explorer"
    }
    if(browser == "Safari"){
        console.log("safari browser");
        var pageSize = $(window).width();
        console.log(pageSize);
        $('.subscribe button[type="submit"]').css({
            'margin-left':'71%',
            'margin-top':'-8%'
           });
         
        if(pageSize >=1366){
           $(".safari").attr("id","tag_safari");
           $("#btn-sub-form").css("margin-left","22%");
           $("input#btn-sub-form.btn-sub-form-back").css({
            'margin-left':'0px'
        });
        
     }else if(pageSize > 992 && pageSize <=1365) {
            $("#btn-sub-form").css("margin-left","41%");
            $("#form-fill-request").css({
                'margin-left':'0px',
                'margin-right':'0px'
            });
            $('.info-fill input').css({
                'width':"100%"
            });
            $(".ads-text").css({
                'margin-top':'15%',
                'margin-left':'-10px'
            })
            // page order new 2
            $("input#btn-sub-form.btn-sub-form-back").css({
                "margin-left":"0px",
                'width': '27%',
            });
            $("input#btn-sub-form.btn-sub-form2").css({
                'margin-left': '72%',
                'margin-top': '-28px',
                'margin-bottom': '69px',
                'width': '27%'
            });
            $("#check_new").css({
                "text-align": "left",
                "width": "30px",
                'height': '30px',
               'margin-top': '7px',
               '-webkit-appearance': 'none',
                'border': '1px solid #5e5555',
                'border-radius': '50%'
            });
            $("#check_new::before").css({
                'width': '30px',
                'height': '30px',
                'border-radius': '15px',
                'top': '-2px',
                'left': '-2px',
               'background-color': 'white',
                'content': '',
                'display': 'inline-block',
                'visibility': 'visible',
                'border': '0.5px solid #6D6E70'
            });
            $("label.label_new2").css({
               'font-weight': 'bold',
                'font-size': '22px'
            });
            $(".col-md-11.check_form2").css({
                "width": '74%',
               'margin-left': '-2%',
                'margin-top': '1%'
            });
            $(".check_form2_new").css({
               'margin-top':'26px',
            });

       }else if(pageSize <=992 && pageSize >= 728) {
        $("#btn-sub-form").css({
            'margin-left':'22%',
            'width': '46%'   
         });
            $('.subscribe button[type="submit"]').css({
            'margin-left':'72%',
            'margin-top':'-9%'
           });
        //    page order new 2
           $(" img.img-order-form-new").css({
            'width': '51%',
           'margin-left': '41%'
           });
           $("#check_new").css({
            "text-align": "left",
            "width": "30px",
            'height': '30px',
           'margin-top': '7px' 
        });
        $("#check_new::before").css({
            'width': '30px',
            'height': '30px',
            'border-radius': '15px',
            'top': '-2px',
            'left': '-2px',
            'background-color': 'white',
            'content': '',
            'display': 'inline-block',
            'visibility': 'visible',
            'border': '0.5px solid #6D6E70'
        });
        $("label.label_new2").css({
           'font-weight': 'bold',
            'font-size': '22px'
        });
        $(".col-md-11.check_form2").css({
            "width": '62%',
           'margin-left': '-2%',
            'margin-top': '1%'
        });
        $(".check_form2_new").css({
           'margin-top':'26px',
        });
        $(".col-md-11.check_form2").css({
            'width': '100%',
           'margin-left': '7%',
           'margin-top': '-4%'
        });
        $("input#btn-sub-form.btn-sub-form-back").css({
            "margin-left":"9px",
            'width': '35%',
           
        });
        $("input#btn-sub-form.btn-sub-form2").css({
            'margin-left': '64%',
            'margin-top': '-28px',
            'margin-bottom': '69px',
            'width': '35%'
        });
       }else if(pageSize <=727){
        $("#btn-sub-form").css({
            'margin-left':'22%',
            'width': '46%',
            'margin-top':'6%'
         }); 
         $(".line-radio label").css({"font-size":"12.5px"});
          //    page order new 2
          $(" img.img-order-form-new").css({
            'width': '51%',
           'margin-left': '41%'
           });
           $("#check_new").css({
            "text-align": "left",
            "width": "30px",
            'height': '30px',
           'margin-top': '7px' 
        });
        $("#check_new::before").css({
            'width': '30px',
            'height': '30px',
            'border-radius': '15px',
            'top': '-2px',
            'left': '-2px',
           'background-color': 'white',
            'content': '',
            'display': 'inline-block',
            'visibility': 'visible',
            'border': '0.5px solid #6D6E70'
        });
        $("label.label_new2").css({
           'font-weight': 'bold',
            'font-size': '22px'
        });
        $(".check_form2_new").css({
           ' margin-top':'26px',
        });
        $(".col-md-11.check_form2").css({
            'width': '94%',
           ' margin-left': '10%',
           ' margin-top': '-4%'
        });
        $("input#btn-sub-form.btn-sub-form-back").css({
            "margin-left":"9px",
            'width': '35%',
           
        });
        $("input#btn-sub-form.btn-sub-form2").css({
            'margin-left': '64%',
            'margin-top': '-28px',
            'margin-bottom': '69px',
            'width': '35%'
        });
       }
       if(pageSize>= 669 && pageSize <= 727){
        $("input#btn-sub-form.btn-sub-form2").css({
            'margin-top':'28px',
            'margin-left': '64%',
            'margin-bottom': '69px',
            'width': '35%'
        }); 
       }
       if(pageSize >= 970 && pageSize <= 1190){
        $("#form-subscription-of-time").css({
            'margin-left': "0px",
            'margin-right':'0px',
            'margin-bottom':'5%'
        }); 
        $("#tag").css({
         'margin-top':'49%',
         'margin-left':'-22%'
        });
        $(".img-order-form").css({
         'margin-left':'50%'
        });
        $("#form-fill-request").css({
            'margin-left':"0px",
            'margin-right':'0px'
        });
        $(".info-fill input").css("width","100%");
        $('.billing-address input[type="text"]').css("width","100%");
        $(".ads-header").css("display","none");
       }
      if(pageSize >= 806 && pageSize <=929){
           //page order2 new
        $(" img.img-order-form-new").css({
            'width': '51%',
           'margin-left': '41%'
           });
           $("#check_new").css({
            "text-align": "left",
            "width": "30px",
            'height': '30px',
           'margin-top': '7px' 
        });
        $("#check_new::before").css({
            'width': '30px',
            'height': '30px',
            'border-radius': '15px',
            'top': '-2px',
            'left': '-2px',
            'background-color': 'white',
            'content': '',
            'display': 'inline-block',
            'visibility': 'visible',
            'border': '0.5px solid #6D6E70'
        });
        $("label.label_new2").css({
           'font-weight': 'bold',
            'font-size': '22px'
        });
        $(".col-md-11.check_form2").css({
            "width": '62%',
           'margin-left': '-2%',
            'margin-top': '1%'
        });
        $(".check_form2_new").css({
           'margin-top':'26px',
        });
        $(".col-md-11.check_form2").css({
            'width': '100%',
           'margin-left': '7%',
           'margin-top': '-4%'
        });
        $("input#btn-sub-form.btn-sub-form-back").css({
            "margin-left":"9px",
            'width': '35%',
           
        });
        $("input#btn-sub-form.btn-sub-form2").css({
            'margin-left': '64%',
            'margin-top': '-28px',
            'margin-bottom': '69px',
            'width': '35%'
        });
      }
       if(pageSize <=360){
         $(" .contain-radio").css("margin-left","22%");
         $("#tag").css({
            "margin-left": "2%",
            "width": "21%",
            "height": "47px"
         });
     }
       
    }
    else if(browser =="Internet Explorer"){
        console.log("Internet Explorer browser");
        var pageSize = $(window).width();
        console.log(pageSize);
        if(pageSize >= 970 && pageSize <= 1190){
           $("#form-subscription-of-time").css({
               'margin-left': "0px",
               'margin-right':'0px',
               'margin-bottom':'5%'
           }); 
           $("#tag").css({
            'margin-top':'21%',
            'margin-left':'-22%'
           });
           $(".img-order-form").css({
            'margin-left':'50%'
           });
           $("#btn-sub-form").css({
            'margin-left':'22%',
            'width': '46%'   
         });
         $("#form-fill-request").css({
            'margin-left':"0px",
            'margin-right':'0px'
        });
        $(".info-fill input").css("width","100%");
        $('.billing-address input[type="text"]').css("width","100%");
        }
        $(".privacy-section").css("padding","10% 2%");
    }
    else if(browser == "Firefox"){
        console.log("FireFox browser");
        var pageSize = $(window).width();
     
        console.log(pageSize);
        // if(pageSize >1350){
        //         // radio appearance
        // $('#billing-adress-option').css({
        //     'width': '30px',
        //     'height': '30px',
        //     '-moz-appearance': 'none',
        //     'border':'none'
        // });
        
        // $("#check_new").css({
        //     '-moz-appearance': 'none',
        // });
        // }
        if(pageSize>1200 && pageSize <= 1350){
               // radio appearance
        // $('#billing-adress-option').css({
        //     'width': '30px',
        //     'height': '30px',
        //     '-moz-appearance': 'none',
        //     'border':'none'
        // });
        
        // $("#check_new").css({
        //     '-moz-appearance': 'none',
        // });

            // page order form new
            $(".img-order-form-new").css({
                'width': '50%',
               'margin-left': '42%'

            });
            //page order form 2
            $("#btn-sub-form").css({
                'margin-left':'0%',
                'width': '46%'   
             });
             $('#btn-sub-form.btn-sub-form2').css({
                'margin-left': '55%',
                'margin-top': '-30px',
               'width': '46%',
                'margin-bottom': '35px'
            });
            $("#form-fill-request").css({
                   'margin-left':"0px",
                   "margin-right":"0px"
            });
            $(".info-fill input").css({
                   'width':'100%'
            });
            $(".col-md-11.check_form2").css({
                'margin-top': '27px',
                'font-size': '24px',
               'font-weight': 'bold'
            });
            $("#check_new").css({
                '-moz-appearance': 'none',
                "width": "30px",
                'height': '30px',
                'border':'1px solid #5e5555',
                'border-radius':'50%',
                'margin-top':'26px'
            });
        }
        if(pageSize >= 987 && pageSize <= 1199){
            //page order new
            $(".img-order-form-new").css({
                'width': '50%',
               'margin-left': '42%'

            });
           $("#form-subscription-of-time").css({
               'margin-left': "0px",
               'margin-right':'0px',
               'margin-bottom':'5%'
           }); 
           $("#tag").css({
            'margin-top':'21%',
            'margin-left':'-22%'
           });
           $(".img-order-form").css({
            'margin-left':'50%'
           });
           $("#btn-sub-form").css({
            'margin-left':'22%',
            'width': '46%'   
         });
         $("#form-fill-request").css({
            'margin-left':"0px",
            'margin-right':'0px'
        });
        $(".info-fill input").css("width","100%");
        $('.billing-address input[type="text"]').css("width","100%");

        $(".footer-social .social").css("right","-21px");
        //page order form 2 new
        $(".col-md-11.check_form2").css({
            'margin-top': '27px',
            'font-size': '24px',
           'font-weight': 'bold'
        });
        // $("#check_new").css({
        //     '-moz-appearance': 'none',
        //     "width": "30px",
        //     'height': '30px',
        //     'border':'1px solid #5e5555',
        //     'border-radius':'50%',
        //     'margin-top':'26px'
        // });
        $("#btn-sub-form").css({
            'margin-left':'0%',
            'width': '46%'   
         });
         $('#btn-sub-form.btn-sub-form2').css({
            'margin-left': '55%',
            'margin-top': '-30px',
           'width': '46%',
            'margin-bottom': '35px'
           });
        }
        if(pageSize <= 1074 && pageSize >= 986){
            $("#btn-sub-form").css({
                'margin-left':'0%',
                'width': '46%'   
             });
             $('#btn-sub-form.btn-sub-form2').css({
                'margin-left': '55%',
                'margin-top': '-30px',
               'width': '46%',
                'margin-bottom': '35px'
               });
            $(".col-md-11.check_form2").css({
                'margin-top': '27px',
                'font-size': '24px',
               'font-weight': 'bold'
            });
            $(".menu-footer.menu-footer-new.col-md-4.col-xs-12").css({
                'margin-left':"10%"
            });
               
        }
        $(".privacy-section").css("padding","10% 2%");
        //page order new 2
        
        if(pageSize < 628){
            $(".footer-social .social").css({
                "right":"-21px",
                "top":"10px"
            });
        }
        if(pageSize < 448){
            $(".footer-social .social").css({
                "right":"-21px",
                "top":"31px"
            });
            $(".img-order-form-new").css({
                'width':' 100%',
                'margin-left':'120%',
                'height': '207px'
            });
            
        }
        if(pageSize <= 360){
            $(".menu-footer.menu-footer-new.col-md-4.col-xs-12").css({
                'width':"93%"
            });
        }
      
    }

  }