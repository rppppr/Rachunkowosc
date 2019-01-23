$(document).ready(function ()
{
    //tablica przechowująca wszystkie elementy należące do menu
    var allLinks = $('li a');
    //funkcja przewijająca do poszczególnych sekcji, po kliknięciu na jedną z opcji menu
    $(allLinks).click(function ()
    {
        var target = $(this);
        var scroll = $(target.attr('href'));
        $('html, body').stop(true);
        $('html, body').animate(
            {
                scrollTop: scroll.offset().top - 70
            }, 1000);
    });
});