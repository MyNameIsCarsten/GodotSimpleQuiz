extends Control

var quiz = Global.quiz_list
var current_question = Global.current_question

func _ready():
	var question = quiz[current_question]["Question"]
	var answer = quiz[current_question]["Answer"]
