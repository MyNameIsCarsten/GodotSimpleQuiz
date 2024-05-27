extends Button

@onready var tab_container = $"../TabContainer"
@onready var background = $"../Background"

# Called when the node enters the scene tree for the first time.
func _ready():
	tab_container.visible = false

func _on_pressed():
	tab_container.visible = true
	background.visible = true

	
