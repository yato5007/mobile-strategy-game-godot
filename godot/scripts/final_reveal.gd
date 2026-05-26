extends Control

var winner_index: int = 0
var standings = []
var player_names = ["Player 1", "Player 2", "Player 3", "Player 4"]

func _ready():
	$BgPanel/BackButton.pressed.connect(_on_back)

func set_winner(index: int, claims: Dictionary):
	winner_index = index
	var sorted = []
	for i in range(4):
		sorted.append({"index": i, "claim": claims.get(i, 0.0)})
	sorted.sort_custom(func(a, b): return a.claim > b.claim)
	standings = sorted
	
	var winner_name = player_names[winner_index]
	$BgPanel/WinnerBanner/WinnerLabel.text = winner_name + " " + localization.get_string("winner")
	$BgPanel/WinnerBanner/WinnerLabel.text += "\n" + "%.1f" % claims.get(winner_index, 0.0) + " " + localization.get_string("claim")
	
	var rank_labels = [$BgPanel/StandingsPanel/Rank1, $BgPanel/StandingsPanel/Rank2, $BgPanel/StandingsPanel/Rank3, $BgPanel/StandingsPanel/Rank4]
	var rank_names = ["1st", "2nd", "3rd", "4th"]
	for i in range(min(4, sorted.size())):
		var entry = sorted[i]
		var name = player_names[entry.index]
		var claim = entry.claim
		rank_labels[i].text = rank_names[i] + ": " + name + " — %.1f " % claim + localization.get_string("claim")
	
	# Play win/loss sound
	if index == 0:
		audio_manager.play("win_fanfare")
	else:
		audio_manager.play("loss_sound")

func _on_back():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
