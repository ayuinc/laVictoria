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
				# easing: 'ease-in'
			}
		)
	return