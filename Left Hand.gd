extends ARVRController
const CONTROLLER_DEADZONE = 0.65
const MOVEMENT_SPEED = 1.5

var directional_movement = false

func _physics_process(delta):
	_physics_process_directional_movement(delta)

func _physics_process_directional_movement(delta):
	# NOTE: These joystick axis index values are based on the Windows-Mixed-Reality VR controller.
	# Other VR controllers may require adjusting the joystick index values.
	
	# Convert the VR controller's joystick axis values into a Vector2 and store it in a variable called trackpad_vector.
	var joystick_vector = Vector2(-get_joystick_axis(1), get_joystick_axis(0))
	

	# If the joystick_vector's length is less than CONTROLLER_DEADZONE, then just ignore the input entirely.
	if joystick_vector.length() < CONTROLLER_DEADZONE:
		joystick_vector = Vector2(0,0)
	# If the joystick_vector's length is not less than CONTROLLER_DEADZONE, then process the input
	# while accounting for the deadzones within the controller.
	else:
		# (See the link at CONTROLLER_DEADZONE for an explanation of how this code works!)
		joystick_vector = joystick_vector.normalized() * ((joystick_vector.length() - CONTROLLER_DEADZONE) / (1 - CONTROLLER_DEADZONE))
	
	# Get the forward and right direction vectors relative to the global transform of the player camera.
	# What this does is that it gives us vectors that point forward and right relative to the rotation
	# of the player camera.
	# We can use this to move relative to the rotation of the player camera, so that when you push forward
	# on the joystick/trackpad, you move in the direction that the player camera is facing.
	var forward_direction = get_parent().get_node("Player_Camera").global_transform.basis.z.normalized()
	var right_direction = get_parent().get_node("Player_Camera").global_transform.basis.x.normalized()
	
	# Because the trackpad and the joystick will both move the player, we can add them together and normalize
	# the result, giving the combined movement direction
	var movement_vector = (joystick_vector).normalized()
	
	# Calculate the amount of movement the player will take on the Z (forward) axis and assign it to movement_forward.
	var movement_forward = forward_direction * movement_vector.x * delta * MOVEMENT_SPEED
	# Calculate the amount of movement the player will take on the X (right) axis and assign it to movement_forward.
	var movement_right = right_direction * movement_vector.y * delta * MOVEMENT_SPEED
	
	# Remove any movement on the Y axis so the player will not be able to fly/fall just by moving the trackpad/joystick.
	movement_forward.y = 0
	movement_right.y = 0
	
	# If there is movement to apply in either movement_right or movement_forward...
	if (movement_right.length() > 0 or movement_forward.length() > 0):
		# Move the ARVR node (which is assumed to be the parent node) in the direction the player is pushing
		# the trackpad/joystick towards.
		get_parent().global_translate(movement_right + movement_forward)
		# Set directional_movement to true so the code knows this VR controller moving the player.
		directional_movement = true
	# If there is not movement to apply...
	else:
		# Set directional_movement to false so the code knows this VR controller is not moving the player.
		directional_movement = false
