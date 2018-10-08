$(document).ready(function ()
{
    $('window').ready(function ()
    {
        var allLinks = $('li a');
        for(var i = 0 ; i < allLinks.length; i++)
        {
            console.log(allLinks[i]);
        }
    });
});