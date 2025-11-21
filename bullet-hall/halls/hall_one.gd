extends Node2D
@export var player_scene : PackedScene
var player
signal swapscene

func _ready() -> void:
	player = player_scene.instantiate()
	player.setPos(Vector2i(160,630))
	call_deferred("add_child",player)

func _on_area_2d_body_shape_entered(_body_rid: RID, _body: Node2D, _body_shape_index: int, _local_shape_index: int) -> void:
	if _body == player:
		emit_signal("swapscene",3)
		queue_free()
