extends CanvasLayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Coins: " + str(Global.total_coins)
