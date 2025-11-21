extends Node2D
class_name sceneBase

@export var start_scene : PackedScene
@export var entrance_scene : PackedScene
@export var hallOne_scene : PackedScene

func _ready() -> void:
	var startMenu = start_scene.instantiate()
	startMenu.connect("swapscene",changeScene)
	add_child(startMenu)


func changeScene(x) -> void:
	match x:
		1:
			var entrance = entrance_scene.instantiate()
			entrance.connect("swapscene",changeScene)
			call_deferred("add_child",entrance)
		2:
			var hall = hallOne_scene.instantiate()
			hall.connect("swapscene",changeScene)
			call_deferred("add_child",hall)
		
	
