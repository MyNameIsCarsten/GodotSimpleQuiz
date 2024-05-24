extends Label

func _on_submit_pressed():
	text = Global.quiz_list[Global.current_question]["Answer"]
