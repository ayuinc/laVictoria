$(document).ready ->
	$sectionNav = $('.header')
	$navSectionRef = $('.smooth-scroll a')
	$toTop = $('.to-top')

	$(document).on 'scroll', onScroll

	# SMOOTH SCROLL CON VELOCITY JS
	$navSectionRef.on 'click', (e) ->
		e.preventDefault()
		target = this.hash
		$target = $(target)
		$(target).velocity 'scroll', {
			duration: 700,
			offset: 7
		}
		return

	# SCROLL TO DOM TOP FOR FIXED DIV
	$toTop.click (e)->
		e.preventDefault()
		$('html').velocity 'scroll', {
			duration: 700,
			offset: 0
		}
		return

  # OCULTAR NAVEGACION CUANDO USUARIO EN FOOTER
	# getDocHeight = ->
 #    D = document
 #    return Math.max(
 #      D.body.scrollHeight, D.documentElement.scrollHeight,
 #      D.body.offsetHeight, D.documentElement.offsetHeight,
 #      D.body.clientHeight, D.documentElement.clientHeight)

	# $(window).scroll ->
	#   if($(window).scrollTop() > ($(window).height() / 2))
 #      $('.site-wrapper').addClass 'scrolling'
 #      # $('.on-scroll').addClass 'on-scroll-down'
 #    else
 #      # $('.on-scroll').removeClass 'on-scroll-up'
 #    	$('.site-wrapper').removeClass 'scrolling'
	# 		return		

	return

$navSectionRef = $('.smooth-scroll a')
onScroll = (e) ->	
	$scrollPos = $(document).scrollTop()
	$navSectionRef.each ->
    $currLink = $(this)
    $currLinkParent = $currLink.parent()
    $refElement = $($currLink.attr('href'))
    if ($refElement.position().top <= $scrollPos && $refElement.position().top + $refElement.height() > $scrollPos)
      $currLink.addClass 'active'
		  if $refElement.selector == '#video-wrapper-team'
		  	setTimeout(
		  		->
				  	player = videojs('example_video_1')
				  	player.play()
		  		, 3000
		  	)
    else
      $currLink.removeClass 'active'
    return
	return

















