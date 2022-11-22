extends Node2D


var Ball = preload("res://Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var ball = Ball.instance()
	add_child(ball)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
