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

	return

$headerScrollRef = $('.header-scroll a')
$header = $('.header')
$headerOff = $('#header-off')


onScroll = (e) ->	
	$scrollPos = $(document).scrollTop()
	$headerScrollRef.each ->
		$currLink = $(this)
		$currLinkParent = $currLink.parent()
		$refElement = $($currLink.attr('href'))
		$selector = $refElement.selector
		$top = $refElement.position().top
		$refCalc = ($top <= $scrollPos && $top + $refElement.height() > $scrollPos)
		if $refCalc
			$currLink.addClass 'active'
			if $selector is '#video-wrapper-team'
				setTimeout(
					->
						player = videojs('example_video_1')
						player.play()
					3000
					)
		else
			$currLink.removeClass 'active'
		return
	if $headerOff.hasClass 'active'
		$header.removeClass 'header-off'
	else
		console.log 'should header-off'
		$header.addClass 'header-off'
	return

















