$(document).ready(function(){
	if(WURFL.form_factor == 'Desktop'){
		$('.video-wrapper').videoBG({
			mp4:'assets/video/lab-opening.mp4',
			webm:'assets/video/lab-opening.webm',
			ogg:'assets/video/lab-opening.ogg',
			autoplay:true,
			scale:true,
			loop: true,
			zIndex:0
		});

		$('video,audio').each(function(){this.muted=true});

		if(WURFL.form_factor == 'Smartphone' || WURFL.form_factor == 'Tablet'){
			$('.video-wrapper').videoBG({
				poster: 'assets/img/video_placeholder.jpg'
			});
		}
	}
});

var videoExists = document.getElementById("example_video_1");
if (videoExists) {
	var myPlayer = videojs('example_video_1');
	myPlayer.controls(false);
}
