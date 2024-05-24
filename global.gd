extends Node

var quiz_list = [
	{ 
		"Question": "Dummy",
		"Answer": "Dummy1"
	}
]
var current_question = 0

func _ready():
	# Randomize the order of the array
	quiz_list.shuffle()
	
