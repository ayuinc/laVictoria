$(document).ready ->

	$container = $('.isotope-container')

	# console.log $mainFilters
	
	$container.imagesLoaded ->
		$container.isotope({
			itemSelector: '.post-item'
			})
		return

	return