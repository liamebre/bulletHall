extends Node2D
class_name sceneBase

@export var entrance_scene : PackedScene
@export var safeRoom_scene :PackedScene
@export var hallOne_scene : PackedScene
@export var gameOver_scene : PackedScene

var score = 0
var health = 1 
var speed = 75

func _ready() -> void:
	var hall = hallOne_scene.instantiate()
	hall.connect("swapscene",changeScene)
	hall.getScore(score,health,speed)
	call_deferred("add_child",hall)

	
func changeScene(x) -> void:
	match x:
		2:
			var hall = hallOne_scene.instantiate()
			hall.connect("swapscene",changeScene)
			hall.getScore(score,health,speed)
			call_deferred("add_child",hall)
		3:
			var saferoom = safeRoom_scene.instantiate()
			saferoom.connect("swapscene",changeScene)
			saferoom.connect("life",uphealth)
			saferoom.connect("fast",upspeed)
			saferoom.getstat(health,speed)
			call_deferred("add_child",saferoom)
			score += 1 
		4:
			var rip = gameOver_scene.instantiate()
			rip.connect("swapscene",changeScene)
			rip.getScore(score)
			score = 0
			call_deferred("add_child",rip)
		
	

func uphealth():
	health+=1
	
func upspeed():
	speed +=25
