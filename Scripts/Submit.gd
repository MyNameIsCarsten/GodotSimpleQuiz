extends Button

@onready var option_popup = $"../PopupPanel"

#func _ready():
	#var easy_button = option_popup.get_node("VBoxContainer/Easy")
	#var middle_button = option_popup.get_node("VBoxContainer/Middle")
	#var hard_button = option_popup.get_node("VBoxContainer/Hard")
	#
	#easy_button.connect("pressed",_on_easy_pressed)
	#middle_button.connect("pressed", _on_middle_pressed)
	#hard_button.connect("pressed", _on_hard_pressed)


func _on_pressed():
	if text == "Submit":
		text = "Repeat later"
	elif text == "Repeat later":
		option_popup.visible = true
		visible = false
	else:
		pass

func _on_easy_pressed():
	var remaining_question_answer_set = Global.quiz_list.slice(Global.current_question + 1, Global.quiz_list.size())
	var current_question_set = Global.quiz_list[Global.current_question]
	var questions_number_left = remaining_question_answer_set.size()
	# Inserts current question at one third of array
	var position_to_insert = Global.current_question + questions_number_left / 3
	Global.quiz_list.insert(position_to_insert, current_question_set)
	option_popup.visible = false

func _on_middle_pressed():
	var remaining_question_answer_set = Global.quiz_list.slice(Global.current_question + 1, Global.quiz_list.size())
	var current_question_set = Global.quiz_list[Global.current_question]
	var questions_number_left = remaining_question_answer_set.size()
	# Inserts current question in middle of array
	var position_to_insert = Global.current_question + questions_number_left / 2
	Global.quiz_list.insert(position_to_insert, current_question_set)
	option_popup.visible = false


func _on_hard_pressed():
	var current_question_answer_set = Global.quiz_list[Global.current_question]
	# Inserts current question at end of array
	Global.quiz_list.push_back(current_question_answer_set)
	option_popup.visible = false
