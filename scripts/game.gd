extends Node2D

@onready var obstacle_spawner: Node2D = $ObstacleSpawner
@onready var ground: StaticBody2D = $Ground

var score := 0

func _on_player_game_started() -> void:
	obstacle_spawner.start()

func _on_player_died() -> void:
	obstacle_spawner.stop()
	ground.animation_player.pause()
	get_tree().call_group("obstacles", "stop")

func _on_player_scored() -> void:
	score += 1
	print(score)	
