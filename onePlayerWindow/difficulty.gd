extends LineEdit

var diff = 0
var textx 

func _ready():
	diff = 0
	pass 
	
func getDiff():
	return diff

func _process(delta):
	if Input.is_action_just_released("space"):
		if is_visible():
			editable=false
			visible=false
		else:
			editable=true
			visible=true
	
	textx = get_text()
	if int(text)>=1 && int(text)<=40:
		diff = int(text)
		#print(diff)
	
