extends VBoxContainer

const QUIZ_START_BUTTON = preload("res://Scenes/quiz_start_button.tscn")
@onready var game_start = $"../.."

# Called when the node enters the scene tree for the first time.
func _ready():
	print(Global.settings_dictionary)
	var quiz_as_text  = FileAccess.get_file_as_string("res://quiz.json")
	if FileAccess.file_exists(Global.settings_dictionary["json_path"]):
		quiz_as_text  = FileAccess.get_file_as_string(Global.settings_dictionary["json_path"])
	var quiz_dict = JSON.parse_string(quiz_as_text)
	for quiz in quiz_dict:
		var new_quiz_button = Button.new()
		new_quiz_button.text = quiz
		new_quiz_button.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
		new_quiz_button.connect("pressed", _on_quiz_button_pressed.bind(quiz_dict[quiz]))
		add_child(new_quiz_button)
		
func reset_quiz():
	for child in get_children():
		if child is Button:
			child.queue_free()
	var quiz_as_text  = FileAccess.get_file_as_string(Global.settings_dictionary["json_path"])
	print(Global.settings_dictionary["json_path"])
	var quiz_dict = JSON.parse_string(quiz_as_text)
	for quiz in quiz_dict:
		var new_quiz_button = Button.new()
		new_quiz_button.text = quiz
		new_quiz_button.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
		new_quiz_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
		new_quiz_button.connect("pressed", _on_quiz_button_pressed.bind(quiz_dict[quiz]))
		add_child(new_quiz_button)
	Global.current_question = 0
	game_start.visible = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_quiz_button_pressed(quiz):
	Global.quiz_list = quiz
	if Global.settings_dictionary["randomize"]:
		Global.quiz_list.shuffle()
	game_start.visible = false
