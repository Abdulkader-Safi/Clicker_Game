extends Control

@export var time_left: int = 2


func _ready():
	Global.score = 0
	$TimeLeftLabel.text = "Time Left: " + str(time_left) + "s"
	$AimScoreLabel.text = "aim score: " + str(Global.aim_score)

func _on_increase_score_button_pressed():
		Global.score += 1
		$ScoreLabel.text = "Score: " + str(Global.score)
		Input.vibrate_handheld(125)


func _on_time_left_timer_timeout():
	time_left -= 1
	$TimeLeftLabel.text = "Time Left: " + str(time_left) + "s"

	if time_left == 0:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
