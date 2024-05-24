extends Control

var quiz = Global.quiz_list
var current_question = Global.current_question

func _ready():
	print("Current Question: ", current_question)
	# print("\n")
	var question = quiz[current_question]["Question"]
	# print("Question: ", question)
	var answer = quiz[current_question]["Answer"]
	print("Current Answer: ", answer)

