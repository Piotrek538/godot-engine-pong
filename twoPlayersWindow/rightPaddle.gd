extends KinematicBody2D

export var speed = 3000
var velocity = Vector2()

func _physics_process(delta):
	var node = get_node("../difficulty")
	var diff = node.getDiff()
	speed=(diff+10)*1000
	
	var ball = get_node("../ball")
	var ball_velocity = ball.getVelocity()
	velocity = Vector2(0, ball_velocity.y * delta * speed)
	move_and_slide(velocity)
