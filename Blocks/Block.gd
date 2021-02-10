extends RigidBody2D

var falling = true


func _physics_process(delta):
	if falling == true:
		var mouse_x = get_viewport().get_mouse_position().x
		global_position.x = mouse_x
	

func _on_Block_body_entered(body):
	if falling == true:
		falling = false
		
		var new_block = load("res://Blocks/Block.tscn").instance()
		get_parent().add_child(new_block)
		new_block.global_position.y = Global.camera_y
		new_block.global_position.x = 200
		
		var new_score = load("res://Score/Score.tscn").instance()
		get_parent().add_child(new_score)
		new_score.global_position.x = rand_range(0,400)
		new_score.global_position.y = Global.camera_y + rand_range(150,250)
		
		get_parent().move_camera_up()
		Global.camera_y -= 16
