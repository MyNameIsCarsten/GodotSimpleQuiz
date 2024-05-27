extends MenuButton

@onready var menu = $"."
@onready var popup = get_popup()
@onready var json_menu = $"../TabContainer"
@onready var background = $"../Background"

var popup_size: Vector2i = Vector2i(500, 500)
var is_configuring = false

# Called when the node enters the scene tree for the first time.
func _ready():
	popup.hide_on_checkable_item_selection = false
	popup.hide_on_item_selection = false
	popup.hide_on_state_item_selection = false
	popup.connect("about_to_popup", _configure_popup)
	add_menu_buttons()

func _configure_popup():
	if not is_configuring:
		is_configuring = true
		popup.popup_centered(popup_size)
		is_configuring = false

func add_menu_buttons():
	# Quiz Options
	popup.add_separator("Quiz Options:", 0)
	popup.add_check_item("Randomize Quiz", 1)
	popup.connect("id_pressed", _on_popup_id_pressed) 
	
	# json Options
	popup.add_separator("JSON Options:", 0)
	popup.add_item("Load extenral JSON", 2)

# Signal handler for item clicks
func _on_popup_id_pressed(id):
	match id:
		1:
			var current_state = popup.is_item_checked(id)
			popup.set_item_checked(id, !current_state)  # Toggle the checked state
			Global.randomize_quiz = !current_state
			print(!current_state)

		2:
			popup.visible = false
			background.visible = true
			json_menu.visible = true

# Optional: Handle visibility directly if needed
func _on_MenuButton_toggled(button_pressed):
	if button_pressed:
		popup.popup_centered(popup_size)
	else:
		popup.hide()
