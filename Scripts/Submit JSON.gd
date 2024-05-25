extends Button

@onready var text_edit = $"../TextEdit"
@onready var main = $"../../../../../.."
@onready var quiz_container = $GameStart/ColorRect/VBoxContainer/QuizContainer
@onready var background = $"../../../../Background"
@onready var tab_container = $"../../.."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	main.reset_quiz()
	tab_container.visible = false
	background.visible = false
