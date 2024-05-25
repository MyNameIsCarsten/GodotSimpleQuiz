extends Button

@onready var tab_container = $"../../.."
@onready var background = $"../../../../Background"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	tab_container.visible = false
	background.visible = false
