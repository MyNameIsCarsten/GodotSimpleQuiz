extends Node

var quiz_list = [
	{ 
		"Question": "Question 1",
		"Answer": "Answer 1"
	},
	{ 
		"Question": "Question 2",
		"Answer": "Answer 2"
	},
	{ 
		"Question": "Question 3",
		"Answer": "Answer 3"
	},
	{ 
		"Question": "Question 4",
		"Answer": "Answer 4"
	}
]
var current_question = 0

func _ready():
	# Randomize the order of the array
	quiz_list.shuffle()
	
