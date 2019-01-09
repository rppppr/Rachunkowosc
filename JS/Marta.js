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
    sr.reveal('h1, h2, p, .magic-text' , {
        reset: true,
        delay: 300,
        mobile: true,
        easing   : 'linear',
    });
});


//pojawiające się okienko z restartem po kliknięciu "Zakończ grę"

function functionConfirmReset(msg, punkty) {
    var confirmBox = $("#confirm");
    confirmBox.find(".message").text(msg);
    confirmBox.find(".restart").unbind().click(function() {
        confirmBox.hide();
    });
    confirmBox.find(".restart").click(punkty);
    confirmBox.show();
}