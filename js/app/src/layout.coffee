$(document).ready ->

	$dropdownToggle = $('.dropdown-toggle')
	$overlayTrigger = $('.overlay-trigger')

	$dropdownToggle.click (e)->
		e.preventDefault()
		$(this).parent().find('.dropdown').toggleClass 'hidden'
		return

	$overlayTrigger.hover(
		->
			$('.overlay').addClass 'bg-global-color-op'
			return
		->
			$('.overlay').removeClass 'bg-global-color-op'
			return
		) 

	$('.header').headroom()
	return