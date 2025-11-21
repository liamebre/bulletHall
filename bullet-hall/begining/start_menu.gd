extends Control
signal swapscene

func _on_start_button_down() -> void:
	emit_signal("swapscene",1)
	queue_free()


func _on_quit_button_down() -> void:
	get_tree().quit()
