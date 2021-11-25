//---------------스크롤시 한페이지씩 넘어가는 무빙 구현---------------
window.addEventListener("wheel", function (e) {
    e.preventDefault();
}, {
    passive: false
});

var $html = $("html");
var page = 1;
var lastPage = $(".content").length;
var menu = $("aside");

$html.animate({
    scrollTop: 0
}, 10);

$(window).on("wheel", function (e) {

    if ($html.is(":animated")) return;

    if (e.originalEvent.deltaY > 0) {
        if (page == lastPage) return;
        page++;
    } else if (e.originalEvent.deltaY < 0) {
        if (page == 1) return;
        page--;
    }

    var posTop = (page - 1) * $(window).height();
    $html.animate({
        scrollTop: posTop
    });
});


//---------------메뉴 클릭시 해당 페이지로 이동시키기 위한 함수들---------------
function introMove(){
        var offset = $("#intro").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
function skillMove(){
        var offset = $("#chart").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
function projectMove(){
        var offset = $(".projects").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
function contactMove(){
        var offset = $("#contact").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }


//---------------현재 있는 페이지의 메뉴 바탕색은 흰색으로 바뀌게끔 설정---------------
$(document).ready(function () {
    $(window).scroll(function () {
        if (page == 1) {
            $("header").css("animation-iteration-count", "infinite");
            $("#first").css("background", "white");
            $("#first").css("color", "#333");
            $("#second").css("background", "#333");
            $("#second").css("color", "white");
            $("#third").css("background", "#333");
            $("#third").css("color", "white");
            $("#fourth").css("background", "#333");
            $("#fourth").css("color", "white");
        } else if (page == 2) {
            $("header").css("opacity", "0%");
            $("header").css("animation-iteration-count", "0");
            $("#first").css("background", "#333");
            $("#first").css("color", "white");
            $("#second").css("background", "white");
            $("#second").css("color", "#333");
            $("#third").css("background", "#333");
            $("#third").css("color", "white");
            $("#fourth").css("background", "#333");
            $("#fourth").css("color", "white");
        } else if (page == 3) {
            $("header").css("opacity", "0%");
            $("header").css("animation-iiteration-count", "0");
            $("#first").css("background", "#333");
            $("#first").css("color", "white");
            $("#second").css("background", "#333");
            $("#second").css("color", "white");
            $("#third").css("background", "white");
            $("#third").css("color", "#333");
            $("#fourth").css("background", "#333");
            $("#fourth").css("color", "white");
        } else if (page == 4) {
            $("header").css("opacity", "0%");
            $("header").css("animation-iteration-count", "0");
            $("#first").css("background", "#333");
            $("#first").css("color", "white");
            $("#second").css("background", "#333");
            $("#second").css("color", "white");
            $("#third").css("background", "#333");
            $("#third").css("color", "white");
            $("#fourth").css("background", "white");
            $("#fourth").css("color", "#333");
        }
    })

});


