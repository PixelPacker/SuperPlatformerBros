extends GPUParticles2D

const facingLeftLoc : Vector2 = Vector2(5, 15)
const facingRightLoc : Vector2 = Vector2(-5, 15)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var playerVel : Vector2 = GameManager.player.get("velocity")
	# TODO: Improve this by preventing particles from being spawned while the player is in the air
	if playerVel.x != 0 && GameManager.player.is_on_floor():
		emitting = true
		if GameManager.player.facing_left:
			position = facingLeftLoc
		else:
			position = facingRightLoc
	else:
		emitting = false
