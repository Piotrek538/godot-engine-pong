extends KinematicBody2D


export (int) var speed=300
var Velocity=Vector2()


func _physics_process(delta):	
	if Input.is_action_pressed("moveDownS"):
		Velocity.y=speed
	elif Input.is_action_pressed("moveUpW"):
		Velocity.y=-speed
	else:
		Velocity.y=0
	move_and_slide(Velocity)
