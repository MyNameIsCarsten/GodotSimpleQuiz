extends Button

@onready var tab_container = $"../../.."
@onready var background = $"../../../../Background"


func _on_pressed():
	tab_container.visible = false
	background.visible = false
