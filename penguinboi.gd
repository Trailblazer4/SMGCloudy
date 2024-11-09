extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rotate_y(deg2rad(-90))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	if Input.is_action_pressed("up"):
		$AnimationPlayer.play("Walk")
	elif Input.is_key_pressed(KEY_S):
		$AnimationPlayer.play("Die")
	else:
		$AnimationPlayer.play("Idle")

