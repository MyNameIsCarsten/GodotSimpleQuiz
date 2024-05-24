extends VBoxContainer

const QUIZ_PATH = "res://quiz.json"  # Path to your JSON file
const QUIZ_START_BUTTON = preload("res://Scenes/quiz_start_button.tscn")
@onready var game_start = $"../../.."

# Called when the node enters the scene tree for the first time.
func _ready():
	var quiz_as_text  = FileAccess.get_file_as_string(QUIZ_PATH)
	var quiz_dict = JSON.parse_string(quiz_as_text )
	for quiz in quiz_dict:
		var new_quiz_button = Button.new()
		new_quiz_button.text = quiz
		new_quiz_button.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
		new_quiz_button.connect("pressed", _on_quiz_button_pressed.bind(quiz_dict[quiz]))
		add_child(new_quiz_button)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_quiz_button_pressed(quiz):
	Global.quiz_list = quiz
	game_start.visible = false
