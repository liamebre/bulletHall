extends Node2D
signal swapscene

@export var player_scene : PackedScene
@export var lifeboost_scene :PackedScene
@export var speedboost_scene: PackedScene
var player
var lifeboost
var speedboost
var health
var speed
signal life 
signal fast

func _ready() -> void:
	player = player_scene.instantiate()
	player.setPos(Vector2i(112,149),health,speed)
	call_deferred("add_child",player)
	
	lifeboost = lifeboost_scene.instantiate()
	lifeboost.setpos(Vector2i(80,110))
	lifeboost.connect("lifeboost",uphealth)
	call_deferred("add_child",lifeboost)
	
	speedboost = speedboost_scene.instantiate()
	speedboost.setpos(Vector2i(144,110))
	speedboost.connect("speedboost",upspeed)
	call_deferred("add_child",speedboost)
	

func _on_area_2d_body_shape_entered(_body_rid: RID, _body: Node2D, _body_shape_index: int, _local_shape_index: int) -> void:
	if _body == player:
		emit_signal("swapscene",2)
		queue_free()
	
func getstat(h,s):
	health = h
	speed = s
	
func uphealth():
	emit_signal("life")
	clear()

func upspeed():
	emit_signal("fast")
	clear()
	
func clear():
	speedboost.queue_free()
	lifeboost.queue_free()
