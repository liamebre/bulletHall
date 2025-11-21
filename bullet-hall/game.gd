extends Node2D
@export var start_scene : PackedScene

func _ready() -> void:
	var startMenu =  start_scene.instantiate()
	add_child(startMenu)
