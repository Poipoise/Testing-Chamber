extends Node3D
var closed = true
var open = false


func _on_static_body_3d_door_open():
	print("got signal")
	if closed:
		open = true
		closed = false
		$Sketchfab_Scene/AnimationPlayer.play("Open")
		$Close_Timer.start()
		


func _on_close_timer_timeout():
	open = false
	closed = true
	$Sketchfab_Scene/AnimationPlayer.play_backwards("Open")
