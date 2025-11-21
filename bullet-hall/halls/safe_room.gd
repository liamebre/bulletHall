extends Node2D
signal swapscene

@export var player_scene : PackedScene
var player

func _ready() -> void:
	player = player_scene.instantiate()
	player.setPos(Vector2i(112,149))
	call_deferred("add_child",player)

func _on_area_2d_body_shape_entered(_body_rid: RID, _body: Node2D, _body_shape_index: int, _local_shape_index: int) -> void:
	if _body == player:
		emit_signal("swapscene",2)
		queue_free()
	
