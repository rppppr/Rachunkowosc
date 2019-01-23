$(".person-card").each(function ()
    {
        var target = $(this);
        $($(this).find(".button-person")).click(function ()
        {
          var currentSlide = ($(target).find(".slide.active"));
          var nextSlide = currentSlide.next();

          currentSlide.slideUp(700).removeClass('active');
          nextSlide.slideDown(700).addClass('active');

          if(nextSlide.length == 0)
          {
            ($(target).find(".slide")).first().slideDown(700).addClass('active');
          }
        });
    });
