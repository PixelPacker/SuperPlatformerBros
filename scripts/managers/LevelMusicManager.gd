extends Node2D

var bus = "Music"
var audio_stream : AudioStreamPlayer

func _ready():
	if audio_stream == null:
		audio_stream = AudioStreamPlayer.new()
		audio_stream.bus = bus
		add_child(audio_stream)

func play_music(music_path : String):
	audio_stream.stream = load(music_path)
	audio_stream.play()

func stop_music():
	audio_stream.stop()
