extends Control

signal swapscene
var score

func _ready() ->void:
	$ColorRect/scoretext.text = "HIGHEST HALL REACHED = " + str(score)

func _on_quit_button_down() -> void:
	get_tree().quit()

func _on_retry_button_down() -> void:
	emit_signal("swapscene",2)
	queue_free()
	
func getScore(x):
	score = x
