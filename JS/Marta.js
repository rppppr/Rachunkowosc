$(document).ready(function ()
{
    window.sr = ScrollReveal();
    sr.reveal('.about-img, .button-play', {
        reset: true,
        delay:500,
        distance: 0,
        mobile: true,
        easing   : 'linear',
    });
    sr.reveal('h1, h2, h4, p' , {
        reset: true,
        delay: 300,
        mobile: true,
        easing   : 'linear',
    });

});