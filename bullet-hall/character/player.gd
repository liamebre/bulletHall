extends CharacterBody2D
var speed = 100
var health = 1 

func setPos(x):
	position = x
	
func _process(delta: float) -> void:
	get_input()
	move_and_collide(velocity * delta)

func get_input():
	var input_dir = Input.get_vector("left","right","up","down")
	velocity = input_dir * speed
