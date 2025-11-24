extends Node2D
signal swapscene
@export var lore_scene: PackedScene

func _on_start_button_down() -> void:
	emit_signal("swapscene")
	queue_free()

func _on_quit_button_down() -> void:
	get_tree().quit()


func _on_lore_button_down() -> void:
	var lore = lore_scene.instantiate()
	add_child(lore)
