extends CharacterBody2D
var speed = 400

func _process(delta: float) -> void:
	var direction:Vector2 = Input.get_vector("left", "right", "up", "down")
	#direction = Vector2.ZERO
	#position += direction * delta * speed
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_pressed("primary action"):
		print("shooting laser.")
