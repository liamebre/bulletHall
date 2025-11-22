extends RigidBody2D

signal hit
var direction = Vector2i(0,140)

func _ready() -> void:
	position = Vector2i(0,0)
	apply_impulse(direction)
	
func _process(_delta: float) -> void:
	if position.y >= 550 or position.y <-15 or position.x < -115 or position.x > 115:
		queue_free()
	
func setDir(x):
	direction = x
	
func _on_body_shape_entered(_body_rid: RID, body: Node, _body_shape_index: int, _local_shape_index: int) -> void:
	if body.is_in_group("player"):
		emit_signal("hit")
		print("man down")
