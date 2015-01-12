$(document).ready ->

	videocover = document.getElementById 'videocover'
	playBtn = $('.play-video')
	videoPlaying = false

	if videocover 
		myPlayer = videojs 'videocover'
		myPlayer.controls false
		myPlayer.currentTime 3
		playBtn.click((e)->
			e.preventDefault()
			if videoPlaying
				myPlayer.pause()
				$('.play-video i').removeClass('flaticon-pause31').addClass('flaticon-key9')
				videoPlaying = false
			else 
				myPlayer.play()
				$('.video-placeholder').addClass('hidden')
				$('.play-video i').removeClass('flaticon-key9').addClass('flaticon-pause31')
				videoPlaying = true
			return
			)


	return