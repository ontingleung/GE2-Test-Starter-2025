extends CharacterBody3D

@export var speed:float = 2
@export var rot_speed = 180.0


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	var v = Vector3()	
	if Input.is_action_pressed("up"):
		v = global_transform.basis.y
		velocity = v * speed
		move_and_slide()
	if !(Input.is_action_pressed("up")):
		v = global_transform.basis.y
		velocity = v * -9.8
		move_and_slide()
	if  Input.is_action_pressed("forward"):
		v = global_transform.basis.z
		velocity = v * speed
		move_and_slide()
	if  Input.is_action_pressed("reverse"):
		v = global_transform.basis.z
		velocity = v * -(speed)
		move_and_slide()
		
	var r = Input.get_axis("left", "right")
	
	rotate_y(- deg_to_rad(rot_speed) * r * delta)

	
