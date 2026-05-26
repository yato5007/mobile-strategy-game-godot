extends Control

var match_phase: int = 0
var match_controller_ref
var player_claims = []

@onready var player_banners = [
	$BgPanel/PlayerArea/Player1Banner,
	$BgPanel/PlayerArea/Player2Banner,
	$BgPanel/PlayerArea/Player3Banner,
	$BgPanel/PlayerArea/Player4Banner,
]
@onready var seal_effect_scene = preload("res://scenes/seal_effect.tscn")

func _ready():
	$BgPanel/PlayerArea/ActionPanel/SealButton.pressed.connect(_on_seal_pressed)
	_init_player_banners()
	match_controller_ref = $MatchController
	match_controller_ref.phase_changed.connect(_on_phase_changed)
	match_controller_ref.match_ended.connect(_on_match_ended)
	_update_display()
	# Auto-start match on board load
	start_match()

func _init_player_banners():
	var names = ["Player 1", "Player 2", "Player 3", "Player 4"]
	var colors = [
		Color(0.859, 0.078, 0.235),
		Color(0.059, 0.318, 0.729),
		Color(0.314, 0.784, 0.471),
		Color(0.831, 0.686, 0.216),
	]
	for i in range(4):
		var style = StyleBoxFlat.new()
		style.bg_color = colors[i]
		style.corner_radius_top_left = 4
		style.corner_radius_bottom_left = 4
		style.corner_radius_top_right = 4
		style.corner_radius_bottom_right = 4
		player_banners[i].add_theme_stylebox_override("panel", style)
		var label = Label.new()
		label.text = names[i] + ": 0.0"
		label.add_theme_font_size_override("font_size", 12)
		label.position = Vector2(4, 2)
		player_banners[i].add_child(label)
		player_banners[i].set_meta("player_id", i)
		player_claims.append(0.0)

func start_match():
	match_controller_ref.start_match("ffa")
	_update_display()

func advance_phase():
	var seal = seal_effect_scene.instantiate()
	seal.position = Vector2(150, 300)
	add_child(seal)
	seal.play_seal()
	await get_tree().create_timer(0.3).timeout
	match_controller_ref.advance_phase()
	_update_display()

func _on_phase_changed(phase_index):
	for i in range(4):
		var claim = match_controller_ref.claims.get(i, 0.0)
		player_claims[i] = claim
	_update_display()
	_update_threat_rings()

func _on_match_ended(winner_index):
	var reveal_scene = preload("res://scenes/final_reveal.tscn").instantiate()
	reveal_scene.set_winner(winner_index, match_controller_ref.claims)
	get_tree().root.add_child(reveal_scene)
	get_tree().current_scene = reveal_scene
	queue_free()

func _update_display():
	$BgPanel/InfoRow/PhaseLabel.text = match_controller_ref.get_phase_name()
	var banner_names = ["P1", "P2", "P3", "P4"]
	for i in range(min(4, player_banners.size())):
		var claim = player_claims[i] if i < player_claims.size() else 0.0
		var label = player_banners[i].get_child(0) if player_banners[i].get_child_count() > 0 else null
		if label and label is Label:
			label.text = banner_names[i] + ": %.1f" % claim

func _update_threat_rings():
	var claim_values = player_claims.duplicate()
	if claim_values.size() < 2:
		return
	claim_values.sort()
	var highest = claim_values[-1] if claim_values.size() > 0 else 0.0
	var second = claim_values[-2] if claim_values.size() > 1 else 0.0
	var gap = highest - second

func _on_seal_pressed():
	advance_phase()
