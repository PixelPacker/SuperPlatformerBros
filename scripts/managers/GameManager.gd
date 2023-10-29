extends Node

var player : Node2D
var camera : Node2D
var current_level : Node2D

func stage_init():
	LevelMusicManager.play_music(current_level.music_path)
