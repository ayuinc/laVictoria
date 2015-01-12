$(document).ready ->

	headerController = new ScrollMagic()
	parallaxController = new ScrollMagic()
	scrollToController = new ScrollMagic()
	videoOnScrollController = new ScrollMagic()

	# HEADER ONSCROLL
	headerScene = new ScrollScene({
		triggerElement: '.header-trigger'
		triggerHook: 0.2
		})
		.setClassToggle('.header', 'header-off')
		.addTo(headerController)
	# headerScene.addIndicators({zindex: 1000, suffix: "1"})

	# FOLD OVERLAY PARALLAX
	tween = TweenMax.fromTo(".on-scroll", 1, {top: 0, opacity: 1}, {top: -350, opacity: 0.3}, ease: Linear.easeNone)
	parallaxScene = new ScrollScene({
		triggerElement: '.site-content'
		triggerHook: 0.9
		duration: 300
		})
		.setTween(tween)
		.addTo(parallaxController)
	# parallaxScene.addIndicators({zindex: 1000, suffix: "2"})

	# PLAY VIDEO ON SCROLL
	videoOnScroll = document.getElementById 'video-on-scroll'
	if videoOnScroll
		myPlayer = videojs 'video-on-scroll'
		myPlayer.controls false
		videoOnScrollScene = new ScrollScene({
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

	# SCROLL TO
	scrollToController.scrollTo((newpos)->
		TweenMax.to(window, 0.5, {scrollTo: {y: newpos}})
		# $('body').animate({scrollTop: newpos})
		return
		)
	$(document).on('click', 'a[href^=#]', (e)->
		id = $(this).attr('href')
		if $(id).length > 0
			e.preventDefault()
			scrollToController.scrollTo(id)
		return
		)

	return