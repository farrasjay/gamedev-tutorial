extends Sprite

# Rotate speed in degrees per second
export var rotateSpeed: float = 90.0

func _process(delta: float) -> void:
	# Rotate the sprite
	rotate(deg2rad(rotateSpeed) * delta)
