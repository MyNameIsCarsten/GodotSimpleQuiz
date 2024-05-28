extends Button

@onready var main = $"../../../../../.."
@onready var background = $"../../../../Background"
@onready var tab_container = $"../../.."



func _on_pressed():
	main.reset_quiz()
	tab_container.visible = false
	background.visible = false
