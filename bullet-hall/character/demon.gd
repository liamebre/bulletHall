extends Node2D

@export var fireball_scene : PackedScene

var direction = Vector2i(0,140)
var tt = 0.0
var score
signal hit

func setPos(x):
	position = x
	
func _process(delta: float) -> void:
	tt += delta

func _on_shot_timer_timeout() -> void:
	for i in score + 1:
		var randx = randi_range(-100,100)
		var fireball = fireball_scene.instantiate()
		fireball.connect("hit",playerhit)
		direction = Vector2i(randx,130)
		fireball.setDir(direction)
		call_deferred("add_child",fireball)

func playerhit():
	emit_signal("hit")
	
func getScore(x):
	score = x
