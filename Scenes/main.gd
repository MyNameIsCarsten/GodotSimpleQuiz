extends Control

var quiz = Global.quiz_list
var current_question = Global.current_question

func _ready():
	print("Current Question: ", current_question)
	# print("\n")
	var question = quiz[current_question]["Question"]
	# print("Question: ", question)
	var answers_array = quiz[current_question]["Answers"]
	# print("Answers Array: ", answers_array)
	for answer in answers_array:
		var answer_text = answer["Text"]
		# print("Answer Text: ", answer_text)
		var answer_is_correct = answer["isCorrect"]
		# print("Answer is correct: ", answer_is_correct)
	

