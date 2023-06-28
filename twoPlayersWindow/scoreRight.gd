extends Label




func _ready():
	var nodePath: NodePath="../ball"
	var node: = get_node(nodePath)
	
	#print("name: ", node.name, " parent: ", node.get_parent().name)
	#print(node.getLeftGoals())
	#get_tree().quit()
	text=str(node.getRightGoals())
	
	

func _physics_process(delta):
	pass
	#var score=get_node("res://twoPlayersWindow/ball.tscn").getLeftGoals
	#text=str(score)
