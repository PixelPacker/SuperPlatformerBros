extends CharacterBody2D

const speed = 200.0
const jumpVelocity = -350.0
const jumpFallingMulti = 1.25
const lowJumpFallingMulti = 1.50
const coyoteTime : int = 1500

var facingLeft : bool = false
var lastTimeOnGround : float


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	GameManager.player = self

func _physics_process(delta):
	if not is_on_floor():
		if Input.is_action_pressed("jump"):
			if velocity.y < 0:
				velocity.y += (gravity * jumpFallingMulti) * delta
			else:
				velocity.y += gravity * delta
		else:
			velocity.y += (gravity * jumpFallingMulti) * delta

	if Input.is_action_just_pressed("jump") and canJump():
		velocity.y = jumpVelocity

	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	setFacing()
	move_and_slide()

func canJump() -> bool:
	var currentTime : float = Time.get_ticks_msec()
	if is_on_floor():
		lastTimeOnGround = currentTime
	if currentTime <= (lastTimeOnGround + coyoteTime):
		#if !is_on_floor():
		#	print("You're in a cartoon")
		return true
	else:
		#print("Current Time: ", currentTime)
		#print("Allowed Time: ", (lastTimeOnGround + coyoteTime))
		return false

func setFacing():
	if(velocity.x < 0):
		facingLeft = true
	elif(velocity.x > 0):
		facingLeft = false
