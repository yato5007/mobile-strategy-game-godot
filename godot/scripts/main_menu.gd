extends Control

var selected_mode: String = "ffa"

func _ready():
	$BgPanel/PlayButton.pressed.connect(_on_play_pressed)
	$BgPanel/ModeFFA.pressed.connect(_on_mode_ffa_pressed)
	$BgPanel/Mode2v2.pressed.connect(_on_mode_2v2_pressed)
	$BgPanel/LangToggle.pressed.connect(_on_lang_toggled)
	$BgPanel/TitleLabel.text = tr("title")
	$BgPanel/SubtitleLabel.text = tr("subtitle")
	_update_mode_labels()

func _update_mode_labels():
	$BgPanel/PlayButton.text = tr("play") + " ▶"
	$BgPanel/ModeFFA.text = tr("mode_ffa")
	$BgPanel/Mode2v2.text = tr("mode_2v2")

func _on_play_pressed():
	var board = preload("res://scenes/game_board.tscn").instantiate()
	board.set_meta("mode", selected_mode)
	get_tree().root.add_child(board)
	get_tree().current_scene = board
	queue_free()

func _on_mode_ffa_pressed():
	selected_mode = "ffa"
	$BgPanel/ModeFFA.text = tr("mode_ffa")
	$BgPanel/Mode2v2.text = tr("mode_2v2")

func _on_mode_2v2_pressed():
	selected_mode = "2v2"
	$BgPanel/Mode2v2.text = tr("mode_2v2")
	$BgPanel/ModeFFA.text = tr("mode_ffa")

func _on_lang_toggled():
	if localization.locale == "en":
		localization.set_locale("ar")
	else:
		localization.set_locale("en")
	_update_mode_labels()
	$BgPanel/TitleLabel.text = tr("title")
	$BgPanel/SubtitleLabel.text = tr("subtitle")

