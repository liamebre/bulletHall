extends RigidBody2D
var direction = Vector2i(0,140)
func _ready() -> void:
	position = Vector2i(0,0)
	apply_impulse(direction)
	
func _process(_delta: float) -> void:
	if position.y >= 550 or position.y <-15 or position.x < -115 or position.x > 115:
		queue_free()
	
func setDir(x):
	direction = x
