extends RigidBody2D

signal hit
var direction = Vector2i(0,140)

func _ready() -> void:
	position = Vector2i(0,0)
	apply_impulse(direction)
	$".".set_max_contacts_reported(30) 
	$".".set_contact_monitor(true)
	
func _process(_delta: float) -> void:
	if position.y >= 530 or position.y <-10 or position.x < -115 or position.x > 115:
		queue_free()
	

func setDir(x):
	direction = x

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		emit_signal("hit")
