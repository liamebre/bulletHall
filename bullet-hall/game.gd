extends Node2D
@export var scene_manager : PackedScene
@export var start_scene : PackedScene

func _ready() -> void:
	var startMenu = start_scene.instantiate()
	startMenu.connect("swapscene",start_game)
	add_child(startMenu)

func _process(_delta: float) -> void:
	pass

func start_game():
	var scene = scene_manager.instantiate()
	add_child(scene)
