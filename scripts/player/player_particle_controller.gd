extends GPUParticles2D

const facingLeftLoc : Vector2 = Vector2(5, 15)
const facingRightLoc : Vector2 = Vector2(-5, 15)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var playerVel : Vector2 = GameManager.player.get("velocity")
	if playerVel.x > 0|| playerVel.x < 0:
		emitting = true
		if GameManager.player.facingLeft:
			position = facingLeftLoc
		else:
			position = facingRightLoc
	else:
		emitting = false
