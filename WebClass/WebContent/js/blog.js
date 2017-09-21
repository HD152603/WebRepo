	
function menu_over(e) {
		e.setAttribute("class", "nav-item active") //<li class="nav-item active">
}
function menu_out(e) {
	e.setAttribute("class", "nav-item ") //<li class="nav-item">
} 
//Select all links with hashes
$('a[href*="#"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#carouselExampleIndicators"]')
  .click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
      && 
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000, function() {
          // Callback after animation
          // Must change focus!
          var $target = $(target);
          $target.focus();
          if ($target.is(":focus")) { // Checking if the target was focused
            return false;
          } else {
            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
            $target.focus(); // Set focus again
          };
        });
      }
    }
  });

// 느린 스크롤
;(function( $ ) {
	
    $.fn.parallax = function ( userSettings ) {
        var options = $.extend( {}, $.fn.parallax.defaults, userSettings );

        return this.each(function () {
            var $this   = $(this),
                isX     = options.axis === 'x',
                origPos = ( $this.css( 'background-position' ) || '' ).split(' '),
                origX   = $this.css( 'background-position-x' ) || origPos[ 0 ],
                origY   = $this.css( 'background-position-y' ) || origPos[ 1 ],
                dist    = function () {
                    return -$( window )[ isX ? 'scrollLeft' : 'scrollTop' ]();
                };
            $this
                .addClass( 'inview' );

            $this.bind('inview', function ( e, visible ) {
                $this[ visible ? 'addClass' : 'removeClass' ]( 'inview' );
            });

            $( window ).bind( 'scroll', function () {
                if ( !$this.hasClass( 'inview' )) { return; }
                var xPos = isX ? ( dist() * options.speed ) + 'px' : origX,
                    yPos = isX ? origY : ( dist() * options.speed ) + 'px';
                $this.css( 'background-position', xPos + ' ' + yPos );
            });
        });
    };

    $.fn.parallax.defaults = {
        start: 0,
        stop: $( document ).height(),
        speed: 1,
        axis: 'x'
    };
   

})( jQuery );
$('.second').parallax({ speed: 0.3, axis: 'y' });
$('.do').parallax({ speed: 0.2, axis: 'y' });

// 글씨 fade in
function showImages(el) {
    var windowHeight = jQuery( window ).height();
    $(el).each(function(){
        var thisPos = $(this).offset().top;

        var topOfWindow = $(window).scrollTop();
        if (topOfWindow + windowHeight - 400 > thisPos ) {
            $(this).addClass("fadeIn");
        }
    });
}

// if the image in the window of browser when the page is loaded, show that image
$(document).ready(function(){
    showImages('.fa	');
});

// if the image in the window of browser when scrolling the page, show that image
$(window).scroll(function() {
    showImages('.fa');
});

//로그인
$(function(){
		$('#loginForm').submit(function (event) {
			// 자동으로 submit되는 것을 막기	
			event.preventDefault();
			
			// id,pwd값 가져오기
			//document.getElemntById("id").value;
			var id = $('#id').val();
			var pwd = $('#pwd').val();
			console.log(id, pwd);
			
			// 서버로 post 전송 (ajax)
			$.post("http://httpbin.org/post",
				{"id": id, "pwd" : pwd},
				function(data) {
					//alert(data.form.id + "로그인");
					var myModal = $("#myModal");
					myModal.modal();
					myModal.find('.modal-body').text(data.form.id + "님 로그인되었습니다.")
				});
		});
	});
