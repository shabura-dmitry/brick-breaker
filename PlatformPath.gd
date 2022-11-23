extends Path2D





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	if Input.is_action_pressed("ui_right"):
		$PathFollow2D.offset -= 4
	elif Input.is_action_pressed("ui_left"):
		$PathFollow2D.offset += 4


