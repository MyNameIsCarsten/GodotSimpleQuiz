extends Button

@onready var option_popup = $"../PopupPanel"

func _ready():
	if Global.settings_dictionary["type"] == Global.quiz_type.WRITTEN:
		text = "Submit"
	else:
		text = "Show Answer"

func _on_pressed():
	if text == "Submit" or text == "Show Answer":
		text = "Repeat later"
	elif text == "Repeat later":
		option_popup.visible = true
		visible = false
		if Global.settings_dictionary["type"] == Global.quiz_type.WRITTEN:
			text = "Submit"
		else:
			text = "Show Answer"
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
