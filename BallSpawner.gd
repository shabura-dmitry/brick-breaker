extends Node2D


var Ball = preload("res://Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	var ball = Ball.instance()
	if Input.is_action_just_pressed("mouse_left"):
		add_child(ball)
