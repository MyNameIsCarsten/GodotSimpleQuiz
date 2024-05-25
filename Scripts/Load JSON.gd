extends Button

@onready var settings_pop_up = $"../../../../SettingsPopUp"


# Called when the node enters the scene tree for the first time.
#func _ready():
	#var quiz_as_text  = FileAccess.get_file_as_string(QUIZ_PATH)
	#var quiz_dict = JSON.parse_string(quiz_as_text )
	#for quiz in quiz_dict:
		#var new_quiz_button = Button.new()
		#new_quiz_button.text = quiz
		#new_quiz_button.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
		#new_quiz_button.connect("pressed", _on_quiz_button_pressed.bind(quiz_dict[quiz]))
		#add_child(new_quiz_button)


func _on_pressed():
	settings_pop_up.visible = true

