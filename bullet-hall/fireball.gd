extends RigidBody2D

func _ready() -> void:
	position = Vector2i(80,60)

func _process(_delta: float) -> void:
	position.y += 5
