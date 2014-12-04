$(document).ready ->

	$container = $('.isotope-container')

	$container.imagesLoaded ->
		$container.isotope({
			itemSelector: '.post-item'
			})
		return

	$bioGrid = $('.bio-grid')

	$bioGrid.imagesLoaded ->
		$bioGrid.isotope({
			itemSelector: '.bio-item'
		})
		return

	return