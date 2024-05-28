extends TextEdit

func _ready():
	if Global.settings_dictionary["type"] == "Index":
		visible = false

