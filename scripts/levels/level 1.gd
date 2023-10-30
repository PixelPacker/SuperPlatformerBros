extends "res://scripts/levels/LevelBase.gd"

func _init():
	music_path = "res://assets/music/Dark Fantasy Studio-PIXEL Faster stronger harder/4- Dark Fantasy Studio - Faster stronger harder.wav"
	level_name = "level 1"
	level_type = level_types.Flag

func _ready():
	init_stage()
