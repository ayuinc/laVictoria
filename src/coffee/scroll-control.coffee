'use-strict'
$(document).ready ->
	scrollToController = new ScrollMagic.Controller()

	# SCROLL TO
	scrollToController.scrollTo((newpos)->
		TweenMax.to(window, 0.5, {scrollTo: {y: newpos}})
		return
		)
	$(document).on('click', 'a[href^=#]', (e)->
		id = $(this).attr('href')
		if $(id).length > 0 && !id.match(/nav/g) && !id.match(/carousel/g)
			e.preventDefault()
			scrollToController.scrollTo(id)
		return
		)

	# HEADER DISPLAY
	headerDisplayController = new ScrollMagic.Controller()

	headerScrollScene = new ScrollMagic.Scene({
		triggerHook: 'onLeave'
		triggerElement: '.hero-unit'
		duration: $('.site-content').height()
		offset: 70
		})
		.setClassToggle('.site-wrapper', 'header-fixed')
		.addTo(headerDisplayController)
	# headerScrollScene.addIndicators({zindex: 1000, suffix: 1})

	$(".onepage-scroll-content").onepage_scroll({
		sectionContainer: "section"
		easing: "ease"
		animationTime: 1000
		pagination: true
		updateURL: false
		loop: false
		keyboard: true
		responsiveFallback: false
		direction: "vertical"
		})

	# PLAY VIDEO ON SCROLL
	videoOnScrollController = new ScrollMagic.Controller()
	videoOnScroll = document.getElementById 'video-on-scroll'
	if videoOnScroll
		myPlayer = videojs 'video-on-scroll'
		myPlayer.controls false
		videoOnScrollScene = new ScrollMagic.Scene({
			triggerElement: '.video-on-scroll'
			duration: $(window).height()
			# triggerHook: 0.3
			})
			.addTo(videoOnScrollController)
		videoOnScrollScene.on('enter', (e)->
			myPlayer.play()
			return
			)
		videoOnScrollScene.on('leave', (e)->
			myPlayer.pause()
			return
			)
		# videoOnScrollScene.addIndicators({zindex: 1000, suffix: "3"})


	return
















