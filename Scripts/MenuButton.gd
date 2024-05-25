extends Button

@onready var v_box_container = $"../VBoxContainer"

# Called when the node enters the scene tree for the first time.
func _ready():
	v_box_container.visible = false




func _on_pressed():
	v_box_container.visible = true

func _input(event):
	# Close Window on click outside of it
	# Check for mouse click
	if (event is InputEventMouseButton) and event.pressed:
		# Check if the event coords are inside the controls size
		var evLocal = make_input_local(event)
		if !Rect2(Vector2(0,0),size).has_point(evLocal.position):
			v_box_container.visible = false
