extends Button

@export var decrease: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.current_question >= Global.quiz_list.size() && !decrease:
		visible = false
		Global.current_question = Global.quiz_list.size()
	elif Global.current_question <= 0 && decrease:
		visible = false
		Global.current_question = 0
	else:
		visible = true

func _on_pressed():
	if !decrease:
		increase_current_question()
	else:
		decrease_current_question()
	print("Current Question: ", Global.current_question)
	print("Quiz Length: ", Global.quiz_list.size())	
	
func increase_current_question():
	Global.current_question += 1
	

func decrease_current_question():
	Global.current_question -= 1
	
		
