extends Camera2D

var camSmoothing = 0.1
var cameraOffset : float = 2.5
var game_window : Window
var window_scale : float = .1
var base_scale_res : Vector2 = Vector2(1280, 720)
var scale_multi : float = 2

func _ready():
	GameManager.camera = self
	game_window = get_window()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# Note for me on how to get the velocity variable because I'm dumb
	# GameManager.player.get("variable")	
	determine_facing()
	determine_zoom()

func determine_facing():
	if(GameManager.player.facing_left):
		position.x = lerpf((position.x + -cameraOffset), (GameManager.player.position.x + -cameraOffset), camSmoothing)
	else:
		position.x = lerpf((position.x + cameraOffset), (GameManager.player.position.x + cameraOffset), camSmoothing)

func determine_zoom():
	var window_size = game_window.size
	var cam_scale : Vector2 = Vector2(window_size.x / base_scale_res.x, window_size.y / base_scale_res.y)
	self.zoom = (cam_scale * scale_multi)
