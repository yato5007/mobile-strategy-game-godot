extends Control

func _ready():
	$BgPanel/PlayButton.pressed.connect(_on_play_pressed)
	$BgPanel/ModeFFA.pressed.connect(_on_mode_ffa_pressed)
	$BgPanel/Mode2v2.pressed.connect(_on_mode_2v2_pressed)

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game_board.tscn")

func _on_mode_ffa_pressed():
	$BgPanel/ModeFFA.text = "FFA • SELECTED"
	$BgPanel/Mode2v2.text = "2 vs 2 • Team Battle"

func _on_mode_2v2_pressed():
	$BgPanel/Mode2v2.text = "2 vs 2 • SELECTED"
	$BgPanel/ModeFFA.text = "FFA • 1v1v1v1"
