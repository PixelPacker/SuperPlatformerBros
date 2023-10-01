extends Camera2D

var camSmoothing = 0.1
var cameraOffset : float = 2.5

func _ready():
	GameManager.camera = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# Note for me on how to get the velocity variable because I'm dumb
	# GameManager.player.get("variable")	
	if(GameManager.player.facingLeft):
		position.x = lerpf((position.x + -cameraOffset), (GameManager.player.position.x + -cameraOffset), camSmoothing)
	elif(!GameManager.player.facingLeft):
		position.x = lerpf((position.x + cameraOffset), (GameManager.player.position.x + cameraOffset), camSmoothing)
		
