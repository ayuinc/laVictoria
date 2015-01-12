$(document).ready ->

# DISABLE ANCHORS
	$('.disable-anchors a').click (e)->
		e.preventDefault()
		return

	$('.site-content').css({
		marginTop: $(window).height()
		})

	return # END ON READY