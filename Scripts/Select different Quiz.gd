extends Button

@onready var game_over = $"../../.."
@onready var navigation_button_2 = $"../../../../Right/ColorRect2/NavigationButton2"
@onready var game_start = $"../../../../GameStart"


func _on_pressed():
	Global.current_question = 0
	game_over.visible = false
	navigation_button_2.text = "Next"
	game_start.visible = true
	
	
