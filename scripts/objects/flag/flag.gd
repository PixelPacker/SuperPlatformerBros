extends Node2D

signal on_touch

func _init():
	GameManager.flag = self

func _on_area_2d_body_entered(body):
	if body == GameManager.player:
		on_touch.emit()
