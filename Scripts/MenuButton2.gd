extends MenuButton

@onready var menu = $"."
@onready var popup = get_popup()
@onready var json_menu = $"../TabContainer"
@onready var background = $"../Background"
@onready var json_path = $"../TabContainer/Load JSON/VBoxContainer/TextEdit"

#var popup_size: Vector2i = Vector2i(500, 500)
var is_configuring = false

# Called when the node enters the scene tree for the first time.
func _ready():
	popup.hide_on_checkable_item_selection = false
	popup.hide_on_item_selection = false
	popup.hide_on_state_item_selection = false
	popup.connect("about_to_popup", _configure_popup)
	add_menu_buttons()
	setup_popup_theme()

func _configure_popup():
	if not is_configuring:
		is_configuring = true
		popup.popup_centered()
		is_configuring = false

func setup_popup_theme():
	# Clone the existing theme
	var style= popup.get_theme_stylebox("panel")
	# Change style
	style.content_margin_left = 50
	style.content_margin_right = 50
	style.content_margin_top = 50
	style.content_margin_bottom = 50
	# Apply the modified theme to the popup
	popup.add_theme_stylebox_override("panel", style) 

func add_menu_buttons():
	# Quiz Options
	popup.add_separator("Quiz Options:", 0)
	popup.add_check_item("Randomize Quiz", 1)
	popup.set_item_checked(1, Global.settings_dictionary["randomize"])
	popup.connect("id_pressed", _on_popup_id_pressed) 
	
	# json Options
	popup.add_separator("JSON Options:", 0)
	popup.add_item("Load external JSON", 2)

# Signal handler for item clicks
func _on_popup_id_pressed(id):
	match id:
		1:
			var current_state = popup.is_item_checked(id)
			popup.set_item_checked(id, !current_state)  # Toggle the checked state
			Global.settings_dictionary["randomize"]  = !current_state
			Global.save_settings()
			print(!current_state)

		2:
			popup.visible = false
			background.visible = true
			json_path.text = Global.settings_dictionary["json_path"]
			json_menu.visible = true
			

# Optional: Handle visibility directly if needed
func _on_MenuButton_toggled(button_pressed):
	if button_pressed:
		popup.popup_centered()
	else:
		popup.hide()
