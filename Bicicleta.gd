extends Node2D
class_name Bicicleta
@export var Velocidade = 0.5
@export var andarRe = false
@export var pula = false
@export var desce = false

var timer = 2
var timer2 = 2

func _process(delta):
	if (andarRe == true):
		position -= Vector2(Velocidade, 0)
	if (pula == true):
		timer -= delta
		if (timer <= 0):
			pula = false
			desce = true
		position -= Vector2(0, Velocidade)
	elif (desce == true):
		timer2 -= delta
		if (timer2 <= 0):
			desce = false
		position += Vector2(0, Velocidade)

func _on_button_bicleta_anda_re():
	andarRe = !andarRe

func _on_button_bicleta_pula():
	if (pula == true):
		pass
	else:
		pula = true
		timer = 2
