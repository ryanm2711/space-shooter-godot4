extends Camera3D

@export var Target: Node3D

@export var Offset := Vector2(0, 15)

func _process(delta: float) -> void:
	if Target == null:
		return
		
	var targetPos := Target.position
	var cameraPos := Vector3(targetPos.x + Offset.x, targetPos.y + Offset.y, position.z)
	position = cameraPos
	

func SetTarget(target: Node3D):
	Target = target
