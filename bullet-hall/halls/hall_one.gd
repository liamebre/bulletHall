extends Node2D
@export var player_scene : PackedScene
@export var demon_scene : PackedScene

var player
var demon
signal swapscene

func _ready() -> void:
	player = player_scene.instantiate()
	player.setPos(Vector2i(160,630))
	call_deferred("add_child",player)
	
	demon = demon_scene.instantiate()
	demon.setPos(Vector2i(160,60))
	call_deferred("add_child",demon)

func _on_area_2d_body_shape_entered(_body_rid: RID, _body: Node2D, _body_shape_index: int, _local_shape_index: int) -> void:
	if _body == player:
		emit_signal("swapscene",1)
		queue_free()
