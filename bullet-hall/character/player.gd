extends CharacterBody2D
@export var speed = 75
@export var health = 1


func setPos(x,h,s):
	position = x
	health = h 
	speed = s
	
func _process(delta: float) -> void:
	get_input()
	move_and_collide(velocity * delta)
	if health == 0:
		queue_free()

func get_input():
	var input_dir = Input.get_vector("left","right","up","down")
	velocity = input_dir * speed

	

	
