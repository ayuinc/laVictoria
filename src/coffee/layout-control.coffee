'use-strict'
$(document).ready ->
	# DISABLE ANCHORS
	$('.disable-anchors a').click (e)->
		e.preventDefault()
		return

	# HREFerence for anchor blocks 
	$('[data-href]').click((e)->
		locationArr = window.location.pathname.split('/')
		lastPath = locationArr[locationArr.length - 1]
		mainPath = locationArr[locationArr.length - 2]
		pathObj = {}
		pathObj[mainPath] = lastPath
		window.history.pushState(pathObj, '', lastPath)
		document.location.replace($(this).data('href'))
		return
		)

	# RESPONSIVE BG IMAGES
	windowWidth = $(window).width()
	RBGIMG = $('[data-responsive-bg-img]')
	screenSizes = {
		screenPhone: 480
		screenTablet: 960
		screenDesktop: 960
		screenLargeDesktop: 1140
	}
	console.log windowWidth
	addBgImg = (item, img) ->
		$(item).addClass('bg-img-block').css({
			'background-image': 'url(' + img + ')'
			})
		return
	$.each(RBGIMG, (index, item)->
		imgSizeObj = $(item).data('responsive-bg-img')
		console.log imgSizeObj
		switch true
			when windowWidth <= screenSizes['screenPhone'] then addBgImg(item, imgSizeObj['vw-phone'])
			when windowWidth <= screenSizes['screenTablet'] && windowWidth > screenSizes['screenPhone'] then addBgImg(item, imgSizeObj['vw-tablet'])
			when windowWidth <= screenSizes['screenDesktop'] && windowWidth > screenSizes['screenTablet'] then addBgImg(item, imgSizeObj['vw-desktop'])
			when windowWidth > screenSizes['screenLargeDesktop'] then addBgImg(item, imgSizeObj['vw-lg-desktop'])
			else null
		return
		)
	
	# TRANSFORM ICONS INITIALIZE
	# transformicons.add('.tcon')

	return # END ON READY