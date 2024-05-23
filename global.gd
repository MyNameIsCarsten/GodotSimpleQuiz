extends Node

var quiz_list = [
	{ 
		"Question": "Question 1",
		"Answers": [
				{
				"Text": "Answer 1",
				"isCorrect": true
				},
				{
				"Text": "Answer 2",
				"isCorrect": false
				},
				{
				"Text": "Answer 3",
				"isCorrect": false
				},
				{
				"Text": "Answer 4",
				"isCorrect": false
				}
			]
	},
	{ 
		"Question": "Question 2",
		"Answers": [
				{
				"Text": "Answer 1",
				"isCorrect": true
				},
				{
				"Text": "Answer 2",
				"isCorrect": false
				},
				{
				"Text": "Answer 3",
				"isCorrect": false
				},
				{
				"Text": "Answer 4",
				"isCorrect": false
				}
			]
	}
]
var current_question = 0
