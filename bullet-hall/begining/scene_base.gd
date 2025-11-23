extends Node2D
class_name sceneBase

@export var start_scene : PackedScene
@export var entrance_scene : PackedScene
@export var safeRoom_scene :PackedScene
@export var hallOne_scene : PackedScene
@export var gameOver_scene : PackedScene

var score = 0


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
		3:
			var saferoom = safeRoom_scene.instantiate()
			saferoom.connect("swapscene",changeScene)
			call_deferred("add_child",saferoom)
			score += 1 
		4:
			var rip = gameOver_scene.instantiate()
			rip.connect("swapscene",changeScene)
			rip.getScore(score)
			score = 0
			call_deferred("add_child",rip)
