extends StaticBody3D
@export var animplayer : AnimationPlayer
signal door_open
var emitted = false

func interacted():
	print("interacted2")
	animplayer.play("Animation")
	await animplayer.animation_finished
	if not emitted:
		emitted = true
		door_open.emit()
