extends CharacterBody3D

@export var speed:float = 1


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	var v = Vector3()	
	v = global_transform.basis.y
	velocity = v * speed
	move_and_slide()
