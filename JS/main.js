$(document).ready(function ()
{
    //przywiązanie do wszyskitch leemetnów listy
    var allLinks = $('li a');

    $(allLinks).click(function ()
    {
        var target = $(this);
        var scroll = $(target.attr('href'));
            $('html, body').animate(
                {
                    scrollTop: scroll.offset().top - 70
                }, 1000);
    });
});