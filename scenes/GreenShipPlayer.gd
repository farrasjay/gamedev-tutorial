extends KinematicBody2D

var input_vector : Vector2
var velocity : Vector2
var rotation_dir : int
export (int) var acceleration = 1000
export (int) var max_speed = 300
export (float) var rotation_speed = 3.5
export (float) var friction_weight = 0.1

func _physics_process(delta):
	input_vector.x = Input.get_action_strength("move_forward") - Input.get_action_strength("move_backward")
	rotation_dir = 0
	
	if Input.is_action_pressed("strafe_right"):
		rotation_dir += 1
	if Input.is_action_pressed("strafe_left"):
		rotation_dir -= 1
	
	velocity += Vector2(input_vector.x * acceleration * delta, 0).rotated(rotation)
	velocity.x = clamp(velocity.x, -max_speed, max_speed)
	velocity.y = clamp(velocity.y, -max_speed, max_speed)
	
	if input_vector.x == 0 && velocity != Vector2.ZERO:
		velocity = lerp(velocity, Vector2.ZERO, friction_weight)
		if abs(velocity.x) <= 0.1:
			velocity.x = 0
		if abs(velocity.y) <= 0.1:
			velocity.y = 0
	
	rotation += rotation_dir * rotation_speed * delta
	velocity = move_and_slide(velocity)
