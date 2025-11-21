extends Node2D
@export var scene_manager : PackedScene

func _ready() -> void:
	var sceneManager = scene_manager.instantiate()
	add_child(sceneManager)

func _process(_delta: float) -> void:
	pass
