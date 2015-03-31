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

	# SCROLL TO AUTOMATIC ANCHORS
	# sectionScrollAnchor = $('.section-scroll-anchor-block')
	# sectionScrollAnchors = []
	# $.each(sectionScrollAnchor, (index, item)->
	# 	sectionScrollAnchors.push(item)
	# 	return
	# 	)
	# console.log sectionScrollAnchors
	# window['anchorScrollIndex']
	# $.each(sectionScrollAnchors, (index, item)->
	# 	window['anchorScrollIndex'] = 'section-scroll-anchor-block-' + index
	# 	$(item).attr('id', anchorScrollIndex)
	# 	scrollDownAnchor = '<div class="scroll-down-anchor">' + 
	# 										'<a class="icon-chevron-down"' +
	# 										'href="#section-scroll-anchor-block-' + (index + 1) + '"' +
	# 										'rel="nofollow"></a></div>'
	# 	$(item).append scrollDownAnchor
	# 	return
	# 	)
	# console.log window['anchorScrollIndex']
	# $('.section-scroll-anchor-block-last .scroll-down-anchor').remove() 

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


	return
















