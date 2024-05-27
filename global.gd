extends Node

var quiz_list = [
	{ 
		"Question": "Dummy",
		"Answer": "Dummy1"
	}
]
var current_question = 0
var quiz_path = "res://quiz.json"  # Path to your JSON file
var randomize_quiz: bool = false

func _ready():
	if randomize_quiz:
		# Randomize the order of the array
		quiz_list.shuffle()
	
