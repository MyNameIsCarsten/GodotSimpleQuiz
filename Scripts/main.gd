extends Control

var quiz = Global.quiz_list
var current_question = Global.current_question
@onready var text_edit = $"Top/ColorRect/TabContainer/Load JSON/VBoxContainer/TextEdit"
@onready var v_box_container = $GameStart/ColorRect/VBoxContainer


func _ready():
	var question = quiz[current_question]["Question"]
	var answer = quiz[current_question]["Answer"]

func reset_quiz():
	print(text_edit.text)
	Global.quiz_path = text_edit.text
	v_box_container.reset_quiz()
