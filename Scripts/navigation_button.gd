extends Button

@export var decrease: bool = false
@onready var correct_answer = $"../../../Center/ColorRect3/Control/CorrectAnswer"
@onready var main = $"../../../.."
@onready var game_over = $"../../../../GameOver"
@onready var submit = $"../../../Center/ColorRect3/Control/Submit"
@onready var text_edit = $"../../../Center/ColorRect3/Control/TextEdit"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.current_question >= Global.quiz_list.size() && !decrease:
		game_over.visible = true
		
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
	correct_answer.text = ""
	if Global.settings_dictionary["type"] == "Written":
		text_edit.text = ""
	submit.visible = true
	submit.text = "Submit"
	
	
func increase_current_question():
	Global.current_question += 1
	if Global.current_question + 1 == Global.quiz_list.size():
		text = "Finish Quiz"
	

func decrease_current_question():
	Global.current_question -= 1
	
		
