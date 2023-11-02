extends Node

var total_coins = 0
var player_lives = 3
enum PlayerState {SMALL, BIG, THONG}
var current_state = PlayerState.SMALL

func spawn_beer_bottle(pos):
	var BeerBottleScene = load("res://beer.tscn")
	var beer_bottle = BeerBottleScene.instantiate()
	beer_bottle.global_position = pos
	get_tree().root.add_child(beer_bottle)

func spawn_thong_powerup(pos):
	var ThongPowerUpScene = load("res://thong_powerup.tscn")
	var thong_power_up = ThongPowerUpScene.instantiate()
	thong_power_up.global_position = pos
	get_tree().root.add_child(thong_power_up)
