extends Node2D
signal lifeboost

func setpos(x):
	position = x

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		emit_signal("lifeboost")
