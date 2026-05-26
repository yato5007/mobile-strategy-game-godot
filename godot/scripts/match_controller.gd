extends Node

var current_phase: int = 0
var mode: String = "ffa"
var player_count: int = 4
var claims = {}
var player_names = ["Player 1", "Player 2", "Player 3", "Player 4"]

signal phase_changed(phase_index)
signal match_started
signal match_ended(winner_index)

func _ready():
	pass

func start_match(match_mode: String = "ffa"):
	mode = match_mode
	current_phase = 0
	player_count = 4  # 4 players in both FFA and 2v2 (2 teams of 2)
	claims = {}
	for i in range(player_count):
		claims[i] = 0.0
	match_started.emit()

func advance_phase():
	if current_phase < 9:
		current_phase += 1
		_simulate_bot_actions()
		_resolve_claims()
		phase_changed.emit(current_phase)
		if current_phase >= 9:
			_end_match()

func _simulate_bot_actions():
	# Simple bot: random actions with varying intensity
	for player in range(player_count):
		if current_phase > 0 and randf() > 0.3:
			var gain = randf_range(0.3, 2.5)
			claims[player] += gain * randf_range(0.5, 1.0)

func _resolve_claims():
	# All resolved claims already applied in _simulate_bot_actions
	_pass()

func _pass():
	pass

func get_phase_name() -> String:
	var names = [
		"Opening Council · Phase 1",
		"Opening Council · Phase 2",
		"Opening Council · Phase 3",
		"Rising Debate · Phase 4",
		"Rising Debate · Phase 5",
		"Rising Debate · Phase 6",
		"Final Petition · Phase 7",
		"Final Petition · Phase 8",
		"Final Petition · Phase 9",
	]
	return names[current_phase] if current_phase < 9 else "Final Majlis Reveal"

func _end_match():
	var winner = 0
	var max_claim = -1.0
	for i in claims:
		if claims[i] > max_claim:
			max_claim = claims[i]
			winner = i
	match_ended.emit(winner)
