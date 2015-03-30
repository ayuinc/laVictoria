'use-strict'
$(document).ready ->
	parallaxController = new ScrollMagic.Controller()

	# FOLD OVERLAY PARALLAX
	tween = TweenMax.fromTo(".on-scroll", 1, {bottom: 0, opacity: 1}, {bottom: -140, opacity: 0.3}, ease: Linear.easeNone)
	parallaxScene = new ScrollMagic.Scene({
		triggerElement: '.site-content'
		triggerHook: 'onEnter'
		duration: 300
		})
		.setTween(tween)
		.addTo(parallaxController) 
	# parallaxScene.addIndicators({zindex: 1000, suffix: "2"})

	return