extends Node2D

@onready var obstacle_spawner: Node2D = $ObstacleSpawner

func _on_player_game_started() -> void:
	obstacle_spawner.start()
