extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Global.quiz_list = [
		{ 
			"Question": "Question 10",
			"Answer": "Answer 10"
		},
		{ 
			"Question": "Question 20",
			"Answer": "Answer 20"
		},
		{ 
			"Question": "Question 30",
			"Answer": "Answer 30"
		},
		{ 
			"Question": "Question 40",
			"Answer": "Answer 40"
		},
		{ 
			"Question": "Question 50",
			"Answer": "Answer 50"
		},
		{ 
			"Question": "Question 60",
			"Answer": "Answer 60"
		},
		{ 
			"Question": "Question 70",
			"Answer": "Answer 70"
		},
		{ 
			"Question": "Question 80",
			"Answer": "Answer 80"
		},
		{ 
			"Question": "Question 90",
			"Answer": "Answer 90"
		},
		{ 
			"Question": "Question 100",
			"Answer": "Answer 100"
		},
		{ 
			"Question": "Question 110",
			"Answer": "Answer 110"
		},
		{ 
			"Question": "Question 120",
			"Answer": "Answer 120"
		}
	]
	var game_start = $"../../../.."
	game_start.visible = false
