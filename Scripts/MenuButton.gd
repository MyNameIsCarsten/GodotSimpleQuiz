extends Button

@onready var tab_container = $"../TabContainer"
@onready var background = $"../Background"



# Called when the node enters the scene tree for the first time.
func _ready():
	tab_container.visible = false

func _on_pressed():
	tab_container.visible = true
	background.visible = true
	

#func _input(event):
	## Close Window on click outside of it
	## Check for mouse click
	#if (event is InputEventMouseButton) and event.pressed:
		## Check if the event coords are inside the controls size
		#var evLocal = make_input_local(event)
		#if !Rect2(Vector2(0,0),size).has_point(evLocal.position):
			#tab_container.visible = false
