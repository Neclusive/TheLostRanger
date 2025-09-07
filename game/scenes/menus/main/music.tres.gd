extends AudioStreamPlayer

const doy = preload("res://music/Days of Yore.mp3")

func _play_music(music: AudioStream, volume = 1):
	if stream == music:
		return
	stream = doy
	volume_db = volume
	play()

func play_menu_music():
	_play_music(doy)
