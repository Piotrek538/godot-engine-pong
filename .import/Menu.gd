extends Control


func _ready():
	#var nodePath: NodePath="backgroundMusic"
	#var node: = get_node(nodePath)
	#node.play()
	pass


func _on_Gracz_vs_Gracz_pressed():	
	get_tree().change_scene("res://twoPlayersWindow/2P.tscn")


func _on_Gracz_vs_Komputer_pressed():	
	get_tree().change_scene("res://onePlayerWindow/1P.tscn")


func _on_Wyjscie_pressed():
	get_tree().quit()
	
	
