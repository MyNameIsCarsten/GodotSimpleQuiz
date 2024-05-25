extends Control

var quiz = Global.quiz_list
var current_question = Global.current_question
@onready var v_box_container = $Top/ColorRect/VBoxContainer

func _ready():
	var question = quiz[current_question]["Question"]
	var answer = quiz[current_question]["Answer"]




