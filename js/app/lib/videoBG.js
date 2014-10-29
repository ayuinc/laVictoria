$(document).ready(function(){
	if(WURFL.form_factor == 'Desktop'){
		$(document).ready(function() {
				$('.video-wrapper').videoBG({
					mp4:'assets/video/waterlily.mp4',
					webm:'assets/video/waterlily.webm',
					// poster:'assets/img/video_placeholder.jpg',
					autoplay:true,
					scale:true,
					loop: 10,
					zIndex:0
				});
				$('video,audio').each(function(){this.muted=true});

				if(WURFL.form_factor == 'Smartphone' || WURFL.form_factor == 'Tablet'){
					$('.video-wrapper').videoBG({
						poster: 'assets/img/video_placeholder.jpg'
					});
				}
		});
	}
});
