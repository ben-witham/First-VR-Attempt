extends RigidBody

var is_alive = true
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const SPEED = 0.75

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _integrate_forces(state):
	var player_pos = get_parent().get_node("ARVROrigin").position
	var velocity = Vector3(30,0,0)
	add_force(velocity, player_pos)
