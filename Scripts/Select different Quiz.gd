extends Button

@onready var game_over = $"../../.."
@onready var game_start = $"../../../../GameStart"
@onready var navigation_button_2 = $"../../../../Middle/Right/ColorRect2/NavigationButton2"

func _on_pressed():
	Global.current_question = 0
	game_over.visible = false
	navigation_button_2.text = "Next"
	game_start.visible = true
	
	
