extends Node2D

var music_path : String
var level_name : String

# Called when the node enters the scene tree for the first time.
func init_stage():
	GameManager.current_level = self
	GameManager.stage_init()
