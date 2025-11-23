extends Node2D

@export var fireball_scene : PackedScene

var direction = Vector2i(0,140)
var tt = 0.0
signal hit

func setPos(x):
	position = x
	
func _process(delta: float) -> void:
	tt += delta

func _on_shot_timer_timeout() -> void:
	var fireball = fireball_scene.instantiate()
	fireball.connect("hit",playerhit)
	direction = Vector2i(randi_range(-40,40),randi_range(100,140))
	fireball.setDir(direction)
	add_child(fireball)

func playerhit():
	emit_signal("hit")
