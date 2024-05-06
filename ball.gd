extends RigidBody3D

@export_range(1, 100, 10) var MOVEMENT_FORCE = 70

func _physics_process(delta: float) -> void:
	var input_dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var direction = Vector3(input_dir.x, 0, input_dir.y).normalized()
	
	if direction:
		apply_central_force(direction * MOVEMENT_FORCE)

