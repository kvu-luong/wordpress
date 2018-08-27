jQuery(document).ready(function ($) {

    $('.menu-icon').click(function () {
        $(this).toggleClass('open');
        $(".header").toggleClass("header-mobile");
    });

    if (screen.width < 992) {
        $(".header").removeClass("header-pc");
    }

    if (screen.width >= 992) {
        if ($('.navbar-home').length) {
            var secondaryNav = $('.navbar-home'),
                secondaryNavTopPosition = secondaryNav.offset().top;

            $(window).on('scroll', function () {
                if ($(window).scrollTop() > secondaryNavTopPosition) {
                    //fix secondary navigation
                    secondaryNav.addClass('is-fixed');
                    $('.header').removeClass('header-mobile');
                    $('.menu-icon').removeClass('open');
                } else {
                    secondaryNav.removeClass('is-fixed');
                }
            });
        }
    }

    if (screen.width <= 991) {
        if ($('.logo-lg').length) {
            var secondaryNav = $('.logo-lg'),
                secondaryNavTopPosition = secondaryNav.offset().top;

            $(window).on('scroll', function () {
                if ($(window).scrollTop() > secondaryNavTopPosition) {
                    //fix secondary navigation
                    secondaryNav.addClass('is-fixed');
                    $('.navbar').addClass('navbar-pd');
                    $('.navbar-2').addClass('navbar-pd');
                } else {
                    secondaryNav.removeClass('is-fixed');
                    $('.navbar').removeClass('navbar-pd');
                    $('.navbar-2').removeClass('navbar-pd');
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

    jQuery(window).load(function () {
        setPositionSlide();
    });

    jQuery(window).resize(function () {
        setPositionSlide();
    });

    $(document).on('click', '.search button', function (e) {
        // $("#comments").val().replace(/^\s+|\s+$/g, "").length != 0 // not blank
        var $input = $('.input-search');
        if ($input.hasClass('open')) {
            if ($input.find('input').val().replace(/^\s+|\s+$/g, "").length != 0) { // input open and not empy
                return true;
            } else {
                $input.removeClass('open');
                return false;
            }
        } else {
            $input.addClass("open");
        }
        return false;
    });

    $('.slider-top').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 2000,
        infinite: true,
        speed: 500,
        slide: 'div',
        cssEase: 'linear'
    });

    $('.slider-2').slick({
        dots: false,
        autoplay: true,
        autoplaySpeed: 2000,
        infinite: true,
        speed: 500,
        slide: 'div',
        cssEase: 'linear'
    });

});
