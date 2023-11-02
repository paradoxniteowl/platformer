extends Area2D

# Called when the node enters the scene tree for the first time.
func _on_body_entered(body):
	if body.is_in_group("Player"):
		Global.current_state = Global.PlayerState.THONG
		self.queue_free()
