$(document).ready(function(){
	// if(WURFL.form_factor == 'Desktop'){
	// 	$('.video-wrapper').videoBG({
	// 		mp4:'assets/video/lab-opening.mp4',
	// 		webm:'assets/video/lab-opening.webm',
	// 		ogg:'assets/video/lab-opening.ogg',
	// 		autoplay:true,
	// 		scale:true,
	// 		loop: true,
	// 		zIndex:0
	// 	});

	// 	$('video,audio').each(function(){this.muted=true});

	// 	if(WURFL.form_factor == 'Smartphone' || WURFL.form_factor == 'Tablet'){
	// 		$('.video-wrapper').videoBG({
	// 			poster: 'assets/img/video_placeholder.jpg'
	// 		});
	// 	}
	// }


	var videoExists = document.getElementById("example_video_1");
	var videoAutoplay = document.getElementById("autoplay");
	var foldVideo = document.getElementById("fold_video");

	if (videoExists) {
		var myPlayer = videojs('example_video_1');
		myPlayer.controls(false);
	}

var playing = false;

	if (foldVideo) {
		var myPlayer = videojs('fold_video');
		myPlayer.controls(false);
		$('.play-video').click(function(e){
			e.preventDefault();
			if (!playing) {
				myPlayer.play();
				playing = true;
				$('.play-video i').removeClass('flaticon-key9').addClass('flaticon-pause31');
			} else {
				myPlayer.pause();
				$('.play-video i').removeClass('flaticon-pause31').addClass('flaticon-key9');
				playing = false;
			}
		});
	}

	if (videoAutoplay) {
		var myPlayer = videojs('autoplay');
		myPlayer.controls(false);
		myPlayer.muted(true);
		myPlayer.play();
	}

});
