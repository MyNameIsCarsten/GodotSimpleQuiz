extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = Global.quiz_list[Global.current_question]["Question"]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.current_question < Global.quiz_list.size():
		text = Global.quiz_list[Global.current_question]["Question"]
	else:
		pass
