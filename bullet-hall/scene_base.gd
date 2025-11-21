extends Node2D
class_name sceneBase

@export var start_scene : PackedScene
@export var entrance_scene : PackedScene

func _ready() -> void:
	var startMenu = start_scene.instantiate()
	add_child(startMenu)
	startMenu.connect("swapscene",changeScene)

func changeScene() -> void:
	var entrance = entrance_scene.instantiate()
	add_child(entrance)
	
