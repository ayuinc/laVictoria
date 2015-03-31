$(document).ready ->

	sectionScroll = $('body #section-scroll')
	sectionScrollList = $('body #section-scroll ul')
	sectionScrollContent = $('[data-section-scroll]')

	sectionScrollController = new ScrollMagic.Controller()
	scrollToController = new ScrollMagic.Controller()

	# SCROLL TO
	scrollToController.scrollTo((newpos)->
		TweenMax.to(window, 0.5, {scrollTo: {y: newpos}})
		return
		)

	scrollDownRef = []
	$.each(sectionScrollContent, (index, item)->
		triggerRef = '.section-scroll-' + index
		sectionData = $(item).data('section-scroll')
		idGen = 'scroll-ref-' + index
		scrollRef = '.scroll-ref-' + index
		$(item).addClass('section-scroll-' + index)
		$(item).attr('id', idGen)
		scrollDownRef.push(idGen)
		sectionList = '<li><a href="#' + idGen + '"' + 
								'class="scroll-ref-' + index + '"></a></li>'
		sectionScrollList.append(sectionList)
		sectionScrollScene = new ScrollMagic.Scene({
			triggerHook: 'onEnter'
			offset: 70
			triggerElement: triggerRef
			duration: $(item).height()
			})
			.setClassToggle(scrollRef, 'active')
			.addTo(sectionScrollController)
		sectionScrollScene.on('enter', (e)->
			scrollToController.scrollTo('#' + idGen)
			return
			)
		# sectionScrollScene.addIndicators({zindex: 1000, suffix: index})
		return
		)
	sectionScrollList.find('li:first-child a').addClass('active')

	# AUTOMATICALLY ADD SCROLL DOWNS TO SECTION SCROLL BLOCKS
	scrollDownRef.shift()
	$.each(sectionScrollContent, (index, item)->
		idRef = scrollDownRef.shift()
		scrollDownAnchor = '<div class="scroll-down-anchor">' + 
										'<a class="icon-chevron-down"' +
										'href="#' + idRef + '"' +
										'rel="nofollow"></a></div>'
		if(idRef != undefined)
			$(item).append(scrollDownAnchor)
		return
		)

	return