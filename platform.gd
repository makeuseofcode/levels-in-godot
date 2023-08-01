# Platform Movement
extends StaticBody2D

const move_speed = 100
var move_direction = Vector2(1, 0)

func _physics_process(delta):
	var platform_movement = move_direction * move_speed * delta
	translate(platform_movement)

	# Change direction when reaching the edge of the platform's path
	if position.x > 400 or position.x < 100:
		move_direction *= -1
