extends Control

@export var player_scene: PackedScene

signal swapscene
var player 

func ready() ->void:
	player = player_scene.instantiate()


func _on_quit_button_down() -> void:
	get_tree().quit()

func _on_retry_button_down() -> void:
	emit_signal("swapscene",1)
