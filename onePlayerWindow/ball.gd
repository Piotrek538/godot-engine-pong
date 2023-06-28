extends KinematicBody2D


export (int) var speed=5
var Velocity=Vector2()
var leftGoals=0
var rightGoals=0
var timer=3





func _ready():
	randomize()
	

	var staticBody=get_node("wynik1")	
	var randomDirection = Vector2(rand_range(-1, 2), rand_range(-1, 2))
	Velocity = randomDirection.normalized() * speed	
	
func winner(winner: String):
	var nodePath: NodePath="../winner"
	var node: = get_node(nodePath)
	var message="Zwyciezca jest gracz "+winner+ "!!"
	node.text=message
	print("lol")	
	get_tree().paused = true
	yield(get_tree().create_timer(5.0), "timeout")
	get_tree().paused = false
	get_tree().change_scene("res://.import/Menu.tscn")
	
		
	
func hitSound():
	var nodePath: NodePath="../hit"
	var node: = get_node(nodePath)
	node.play()
	
		
func _physics_process(delta):
	
	randomize()
	var viewport= get_viewport().size/2
	var collision = move_and_collide(Velocity)
	
	if collision:
		var collider=collision.collider.name
		if collider=="wallDown" || collider=="wallUp":
			Velocity.x*=1
			Velocity.y*=-1
		if collider=="leftPaddle":
			var rand=Vector2(rand_range(1, 2), rand_range(-1, -2))
			Velocity=rand.normalized()*speed
			hitSound()
		if collider=="rightPaddle":
			var rand=Vector2(rand_range(-1, -2), rand_range(-1, -2))
			Velocity=rand.normalized()*speed
			hitSound()
			
			
			
		if collider=="goalAreaLeft":
			position = Vector2(0,0)	
			
			rightGoals+=1	
			
			var nodePath: NodePath="../scoreRight"
			var node: = get_node(nodePath)
			node.text=str(rightGoals)
			
			
			
						
		if collider=="goalAreaRight":
			position = Vector2(0,0)					
			leftGoals+=1
			var nodePath: NodePath="../scoreLeft"
			var node: = get_node(nodePath)
			node.text=str(leftGoals)
	if leftGoals==10:
		winner("lewy")		
	if rightGoals==10:
		winner("prawy")
		
			
			
			
		#print(collider, " ",position.x," ",position.y)
