extends Node

var quiz_list = [
	{ 
		"Question": "Dummy",
		"Answer": "Dummy1"
	}
]
var current_question = 0

var settings_dictionary = {
	"randomize": false,
	"json_path": "res://quiz.json",
}

var settings_path = "user://quiz_settings.json" # %APPDATA%\Roaming\Godot\app_userdata\SimpleQuiz

func _ready():
	load_setting()
	if settings_dictionary["randomize"]:
		# Randomize the order of the array
		quiz_list.shuffle()
	
func save_settings():
	var json = JSON.new()
	# Convert dictionary to JSON
	var to_json = json.stringify(settings_dictionary)
	# Open save file for writing
	var file = FileAccess.open(settings_path, FileAccess.WRITE)
	# Write to file
	file.store_line(to_json)
	# Close file
	file.close()
	
func load_setting():
	var data: Dictionary
	if FileAccess.file_exists(settings_path):
		# Open save file for writing
		var file = FileAccess.open(settings_path, FileAccess.READ)
		# Read from file
		data = JSON.parse_string(file.get_as_text())
		settings_dictionary["randomize"] = data["randomize"]
		settings_dictionary["json_path"] = data["json_path"]
		# Close file
		file.close()
	else:
		settings_dictionary["randomize"] = false
		settings_dictionary["json_path"] = "res://quiz.json"

	
