var cbpAnimatedHeader=(function(){var b=document.documentElement,g=document.querySelector(".navigation"),e=false,a=150;function f(){window.addEventListener("scroll",function(h){if(!e){e=true;setTimeout(d,250)}},false)}function d(){var h=c();if(h>=a){classie.add(g,"navigation-shrink")}else{classie.remove(g,"navigation-shrink")}e=false}function c(){return window.pageYOffset||b.scrollTop}f()})();

var tl = new TimelineMax({repeat:-1});
	dots = $('#dot-1, #dot-2, #dot-3, #dot-4, #dot-5, #dot-6, #dot-7')
    lines = $('#line-1, #line-2');
tl
	.staggerFromTo(dots, 1.5, {scale:0.5, transformOrigin:'50% 50%', ease:Bounce.easeOut}, {scale:1.25, transformOrigin:'50% 50%', ease:Bounce.easeOut, delay: 1, yoyo:true, repeat:-1}, 0.25)
	.to(lines, 0.001, {autoAlpha:1, ease:Power1.easeInOut}, 2.75)
    // .to(lines, 0.25, {autoAlpha:0, ease:Power2.easeOut}),'-=5';

$('.open-nav').click(function(){
    $(this).hide(500);
    $('.close-nav').show(500);
    TweenMax.to('.overlay-nav', 0.5, {autoAlpha:1, ease:Power2.easeInOut});
    TweenMax.to('.mobile-nav', 0.5, {css:{backgroundColor:'transparent'},ease:Power2.easeInOut});
});

$('.close-nav').click(function(){
    $(this).hide(700);
    $('.open-nav').show(800);
    TweenMax.to('.overlay-nav', 0.5, {autoAlpha:0,ease:Power2.easeInOut});
    TweenMax.to('.mobile-nav', 0.5, {css:{backgroundColor:'#373737'},ease:Power2.easeInOut});
});

$('.overlay-nav a').click(function(){
    TweenMax.to('.overlay-nav', 0.5, {autoAlpha:0,ease:Power2.easeInOut});
    TweenMax.to('.mobile-nav', 0.5, {css:{backgroundColor:'#373737'},ease:Power2.easeInOut});
     $('.close-nav').hide(500);
     $('.open-nav').show(500);
});

$('.become-expert').click(function(){
    $('body').css({'height':'100%','overflow-y':'hidden'});
    $('html').css({'height':'100%','overflow-y':'hidden'});
    $('.body-container').css({'overflow-y':'hidden','height':'100%'});
    TweenMax.to('.popup-overlay-1', 0.5, {css:{top:0},ease:Back.easeOut});
    TweenMax.to('.popup-overlay-1', 0.25, {css:{backgroundColor:'rgba(0,0,0,0.5)'},ease:Power2.easeInOut,delay:0.5});
});

$('.become-client').click(function(){
    $('body').css({'height':'100%','overflow-y':'hidden'});
    $('html').css({'height':'100%','overflow-y':'hidden'});
    $('.body-container').css({'overflow-y':'hidden','height':'100%'});
    TweenMax.to('.popup-overlay-2', 0.5, {css:{top:0},ease:Back.easeOut});
    TweenMax.to('.popup-overlay-2', 0.25, {css:{backgroundColor:'rgba(0,0,0,0.5)'},ease:Power2.easeInOut,delay:0.5});
});

$('.recommend-expert').click(function(){
    $('body').css({'height':'100%','overflow-y':'hidden'});
    $('html').css({'height':'100%','overflow-y':'hidden'});
    $('.body-container').css({'overflow-y':'hidden','height':'100%'});
    TweenMax.to('.popup-overlay-3', 0.5, {css:{top:0},ease:Back.easeOut});
    TweenMax.to('.popup-overlay-3', 0.25, {css:{backgroundColor:'rgba(0,0,0,0.5)'},ease:Power2.easeInOut,delay:0.5});
});

$('.recommend-client').click(function(){
    $('body').css({'height':'100%','overflow-y':'hidden'});
    $('html').css({'height':'100%','overflow-y':'hidden'});
    $('.body-container').css({'overflow-y':'hidden','height':'100%'});
    TweenMax.to('.popup-overlay-4', 0.5, {css:{top:0},ease:Back.easeOut});
    TweenMax.to('.popup-overlay-4', 0.25, {css:{backgroundColor:'rgba(0,0,0,0.5)'},ease:Power2.easeInOut,delay:0.5});
});

$('.close-form').click(function(){
    $('body').css({'overflow-y':'initial'});
    $('html').css({'overflow-y':'initial'});
    $('.body-container').css({'overflow-y':'initial','height':'initial'});
    var thisOverlay = $(this).parent().parent().parent();
    TweenMax.to(thisOverlay, 0.25, {css:{backgroundColor:'transparent'},ease:Power2.easeInOut});
    TweenMax.to(thisOverlay, 0.5, {css:{top:'-100%'},ease:Back.easeIn});
});

$(function() {
    $('body').on('click', 'nav a', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeOutExpo');
        event.preventDefault();
    });
});

// Floating label headings for the contact form
$(function() {
    $("body").on("input propertychange", ".floating-label-form-group", function(e) {
        $(this).toggleClass("floating-label-form-group-with-value", !! $(e.target).val());
    }).on("focus", ".floating-label-form-group", function() {
        $(this).addClass("floating-label-form-group-with-focus");
    }).on("blur", ".floating-label-form-group", function() {
        $(this).removeClass("floating-label-form-group-with-focus");
    });
});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});



