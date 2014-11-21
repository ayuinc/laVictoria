$(document).ready ->

	$dropdownToggle = $('.dropdown-toggle')
	$overlayTrigger = $('.overlay-trigger.overlay-us')
	$overlayWork = $('.overlay-trigger.overlay-work')

	# DISABLE ANCHORS
	$('.disable-anchors a').click (e)->
		e.preventDefault()
		return

	# ON SCROLL CONTROL
	$(document).on 'scroll', scrollControl 

	$dropdownToggle.click (e)->
		e.preventDefault()
		$(this).parent().find('.dropdown').toggleClass 'hidden'
		return

	# $overlayTrigger.hover(
	# 	->
	# 		$('.overlay').addClass 'text-info'
	# 		return
	# 	->
	# 		$('.overlay').removeClass 'text-info'
	# 		return
	# 	)

	# $overlayWork.hover(
	# 	->
	# 		$('.overlay').addClass 'text-success'
	# 		return
	# 	->
	# 		$('.overlay').removeClass 'text-success'
	# 		return
	# 	)

	# $scrollDetectOps =
	# 	# vertical offset in px before element is first unpinned
	# 	# offset: $(window).height()
	# 	# scroll tolerance in px before state changes
	# 	# tolerance: 700
	# 	# or you can specify tolerance individually for up/down scroll
	# 	tolerance:
	# 		up: 0
	# 		down: 35
	# 	# css classes to apply
	# 	classes: 
	# 		# when element is initialised
	# 		initial: "scroll-detect"
	# 		# when scrolling up
	# 		pinned: "scroll-detect--up"
	# 		# when scrolling down
	# 		unpinned: "scroll-detect--down"
	# 		# when above offset
	# 		top: "scroll-detect--top"
	# 		# when below offset
	# 		notTop: "scroll-detect--not-top"
	# 	# element to listen to scroll events on defaults to `window`
	# 	# scroller: ''
	# 	# callback when pinned `this` is headroom object
	# 	onPin: ->
	# 	# callback when unpinned `this` is headroom object
	# 	onUnpin: ->
	# 	# callback when above offset `this` is headroom object
	# 	onTop: ->
	# 		$('.site-wrapper').removeClass 'scroll-detect--up'
	# 	# callback when below offset `this` is headroom object
	# 	onNotTop: ->

	# $('.site-wrapper').headroom($scrollDetectOps)

	return

reset = 0
scrollControl = ->
	# console.log $(window).scrollTop()
	winScroll = $(window).scrollTop()
	reset = winScroll / 2
	opacity = (1 - (reset / 100))
	if(winScroll > 140)
		# opacity = 0.5
		return;
	else
		$('.on-scroll').velocity(
			{
				translateY: -(reset) + 'px'
				opacity: opacity
			}
			{
				duration: 0
				easing: 'ease-in'
			}
		)
	return