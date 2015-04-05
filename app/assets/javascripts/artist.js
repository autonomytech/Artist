
function menuToggle()
	{
		var windowWidth = $(window).width();

		if(windowWidth > 767 ){
			$(window).on('scroll', function(){
				if( $(window).scrollTop()> 600 ){
					$('.navbar').addClass('navbar-fixed-top animated fadeIn');
					$('.navbar').removeClass('main-nav');
					$('.navbar').css({background: 'white'});
					$('.nav li a').css({color: '#000'});
				} else {
					$('.navbar').removeClass('navbar-fixed-top');
					$('.navbar').addClass('main-nav');
					$('.navbar').css({background: 'transparent'});
					$('.nav li a').css({color: '#fff'});
				}
			});
		}else{			
			$('.navbar').addClass('navbar-fixed-top');	
			$('.navbar').removeClass('main-nav');
			$('.navbar').css({background: 'white'});
			$('.nav li a').css({color: '#000'});
		};
		if(windowWidth > 767 ){
			$(window).on('scroll', function(){
				if( $(window).scrollTop()> 600 ){
					$('.top-bar').addClass('top-bar-hide');
				} else {
					$('.top-bar').removeClass('top-bar-hide');
				}
			});
		}else{			
			$('.top-bar').addClass(this);				
		};
			
	}

	menuToggle();	
