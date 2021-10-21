$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scroll_top').fadeIn()
        } else {
            $('.scroll_top').fadeOut()
        }
    });
    $(".scroll_top").click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 400);
        return false
    })
});

$(document).ready(function () {
    $(".tab_wrap li").click(function (e) {
        e.preventDefault();
        var Tab = $(this).index();
        var howFar = 50 * Tab;
        $(".slider").css({
            left: howFar + "%"
        });
        $(".tab_wrap li").removeClass("on");
        $(".tab_wrap li")
            .eq(Tab)
            .addClass("on");
        $(".tab_cont").hide();
        $(".tab_cont")
            .eq(Tab)
            .show()
    })
});

$(window).resize(function () {
    var width = $(window).innerWidth();
    if (width>567) {
        $(".search_input").attr("placeholder","검색어를 입력하세요");
    } else {
        $(".search_input").attr("placeholder","검색");
    }
}).resize();

/* link banner */
$('.banner_wrap > ul').slick({
    infinite: true,
    autoplay: true,
    autoplaySpeed: 2000,
    pauseOnHover: true,
    slidesToShow: 7,
    slidesToScroll: 1,
    arrows: false,
    dots: false,
    responsive: [{
        breakpoint: 1920,
        settings: {
            slidesToShow: 5,
            slidesToScroll: 1
        }
    },
    {
        breakpoint: 1024,
        settings: {
            slidesToShow: 3,
            slidesToScroll: 1
        }
    },
    {
        breakpoint: 768,
        settings: {
            slidesToShow: 2,
            slidesToScroll: 1
        }
    }
    ]
});

$('.main_notice').slick({
    infinite: true,
    autoplay: true,
    autoplaySpeed: 2000,
    pauseOnHover: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    arrows: false,
    dots: false,
    responsive: [{
        breakpoint: 1024,
        settings: {
            dots: true,
            slidesToShow: 2,
            slidesToScroll: 1
        }
    },
    {
        breakpoint: 768,
        settings: {
            dots: true,
            centerMode: true,
            slidesToShow: 1,
            slidesToScroll: 1
        }
    }
    ]
});

$('.visual_wrap').slick({
    dots: true,
    autoplay: true,
    arrows: false, /* add */
    autoplaySpeed: 4000
});

$('.m_visual_wrap').slick({
    dots: true,
    autoplay: true,
    autoplaySpeed: 4000
});

$('.still_rolling').slick({
    dots: true,
    arrows: false, /* add */
    autoplaySpeed: 4000
});

$('.std_btn > a').click(function (e) {
    e.preventDefault();
    var Tab = $(this).index();

    $('.std_btn a').removeClass("on");
    $('.std_btn a').eq(Tab).addClass("on");

    $(".square_wrap").hide();
    $(".square_wrap").eq(Tab).show();
});

$('.inner_wrap > a').YouTubePopUp();