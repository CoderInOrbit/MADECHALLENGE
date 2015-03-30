$ = jQuery
;( ($) ->
	
	
	delay = (ms, func) -> setTimeout func, ms
	
	_.each $(".view > g"), (t,i)->
		delay 35*i, ->
			$(t).velocity({opacity:1},{duration: 200+(i*10)});
	if (!!navigator.userAgent.match(/firefox/i))
		$('.pyramade')
			.mouseenter ->
				$(this).children(".front").velocity({opacity:0},{duration: 50});
				$(this).children(".back").velocity({opacity:1},{duration: 50});
				$(this).children(".info").velocity({opacity:1},{duration: 50});
			.mouseleave ->
				$(this).children(".back").velocity({opacity:0},{duration: 50});
				$(this).children(".info").velocity({opacity:0},{duration: 50});
				$(this).children(".front").velocity({opacity:1},{duration: 50});
	else
		$('.pyramade')
			.mouseenter ->
				$(this).children(".front").velocity({rotateY:"90deg"},{duration: 50});
				$(this).children(".back").velocity({rotateY:"180deg"},{delay: 50, duration: 50});
				$(this).children(".info").velocity({rotateY:"360deg"},{delay: 50, duration: 50});
			.mouseleave ->
				$(this).children(".back").velocity({rotateY:"90deg"},{duration: 50});
				$(this).children(".info").velocity({rotateY:"270deg"},{duration: 50});
				$(this).children(".front").velocity({rotateY:"0deg"},{delay: 150, duration: 50});
	
) jQuery