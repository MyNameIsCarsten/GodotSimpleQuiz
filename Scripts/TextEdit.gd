extends TextEdit

func _ready():
	if Global.settings_dictionary["type"] == Global.quiz_type.INDEX:
		visible = false

