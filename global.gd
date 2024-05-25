extends Node

var quiz_list = [
	{ 
		"Question": "Dummy",
		"Answer": "Dummy1"
	}
]
var current_question = 0

var quiz_path = "res://quiz.json"  # Path to your JSON file

func _ready():
	# Randomize the order of the array
	quiz_list.shuffle()
	
