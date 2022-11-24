extends RigidBody2D




const speedup = 100
const maxspeed = 30000
var blockamount = 0
var ballhp = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	blockamount = get_tree().get_nodes_in_group("Brick").size()

func _physics_process(delta):
	if blockamount == 0:
		get_tree().reload_current_scene()
		
	if ballhp < 1:
		queue_free()
		
	var bodies = get_colliding_bodies()
	
	for body in bodies:
		if body.is_in_group("Brick"):
			blockamount -= 1
			body.queue_free()
			
		if body.get_name() == "Platform":
			var speed = get_linear_velocity().length()
			var direction = position - body.get_node("Anchor").get_global_position()
			var velocity = direction.normalized()*min(speed+speedup, maxspeed)
			set_linear_velocity(velocity)
