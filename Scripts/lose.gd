extends Control

func _ready():
	$ScoreLabel.text = "Your Score: " + str(Global.score)
	if Global.aim_score < Global.score:
		Global.aim_score = Global.score

func _on_play_again_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_home_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
