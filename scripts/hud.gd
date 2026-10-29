extends CanvasLayer

@onready var score_label: Label = $ScoreLabel

func set_score(new_score: int) -> void:
	score_label.text = str(new_score)
