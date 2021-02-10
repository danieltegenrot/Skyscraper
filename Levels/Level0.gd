extends Node2D



func _physics_process(delta):
	$"CanvasLayer/Label".text = String(Global.score)

func move_camera_up():
	var current_zoom_level = $Camera.get_zoom()
	$Camera.position.y -= 16
	
	$Camera.zoom = current_zoom_level + Vector2(0.05,0.05)
