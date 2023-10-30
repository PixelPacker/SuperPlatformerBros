extends Node2D

## Path to the music that is played on this stage.
var music_path : String

## Name of the level: used to display and keep track of completed levels
var level_name : String

## Type of level: Allows for the goal to be set on the stage
enum level_types {Flag, Fruit} 

## Set to type of level: level_types.Flag or level_types.Fruit
var level_type

func init_stage():
	GameManager.current_level = self
	GameManager.stage_init()
