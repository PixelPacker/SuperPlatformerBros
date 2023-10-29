extends "res://scripts/levels/LevelBase.gd"

# Called when the node enters the scene tree for the first time.
func _init():
	music_path = "res://assets/music/Dark Fantasy Studio-PIXEL Faster stronger harder/4- Dark Fantasy Studio - Faster stronger harder.wav"
	level_name = "level 1"

func _ready():
	init_stage()
