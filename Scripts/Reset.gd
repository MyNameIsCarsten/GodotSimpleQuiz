extends Button

@onready var text_edit = $"../TextEdit"
@onready var main = $"../../../../../.."
@onready var background = $"../../../../Background"
@onready var tab_container = $"../../.."
@onready var game_start = $GameStart

func _on_pressed():
	text_edit.text = "res://quiz.json"
	Global.settings_dictionary["json_path"] = "res://quiz.json"
	Global.save_settings()
	main.reset_quiz()
	tab_container.visible = false
	background.visible = false

