extends Node2D

class_name Barco
@export var Velocidade = 0.5
@export var andarFrente = false
@export var andarRe = false

func _process(delta):
	if (andarFrente == true):
		position += Vector2(Velocidade, 0)
	elif (andarRe == true):
		position -= Vector2(Velocidade, 0)

func _on_button_button_down():
	andarFrente = !andarFrente

func _on_button_2_button_down():
	andarRe = !andarRe
