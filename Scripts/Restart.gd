extends Button

@onready var game_over = $"../../.."
@onready var navigation_button_2 = $"../../../../Right/ColorRect2/NavigationButton2"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Global.current_question = 0
	game_over.visible = false
	navigation_button_2.text = "Next"
	
