extends Area2D


func _on_Score_body_entered(body):
	Global.score += 1
	queue_free()
