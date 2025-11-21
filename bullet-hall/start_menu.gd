extends Control
signal swapscene

func _on_button_button_down() -> void:
	emit_signal("swapscene")
	queue_free()
