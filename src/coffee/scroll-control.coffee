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

	# PLAY VIDEO ON SCROLL
	videoOnScrollController = new ScrollMagic.Controller()
	videoOnScroll = document.getElementById 'video-on-scroll'
	wasFirstPlayed = false
	playerCurrentTime = 0
	if videoOnScroll
		myPlayer = videojs 'video-on-scroll'
		myPlayer.controls false
		myPlayer.load()
		myPlayer.currentTime 300
		videoOnScrollScene = new ScrollMagic.Scene({
			triggerElement: '.video-on-scroll'
			duration: $(window).height()
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
















