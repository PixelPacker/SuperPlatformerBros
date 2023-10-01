extends AnimatedSprite2D

func _process(_delta):
	var playerVel : Vector2 = GameManager.player.get("velocity")
	if(GameManager.player.get("facingLeft")):
		flip_h = true
	else:
		flip_h = false
	
	if(playerVel.x == 0 && playerVel.y == 0):
		play("idle")
	elif(playerVel.x != 0 && playerVel.y == 0):
		play("run")
	elif(playerVel.y > 0):
		play("jump")
	elif(playerVel.y < 0):
		play("fall")
