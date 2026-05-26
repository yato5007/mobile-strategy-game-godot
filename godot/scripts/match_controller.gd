extends Node

var current_phase: int = 0
var mode: String = "ffa"
var player_count: int = 4
var claims = {}

signal phase_changed(phase_index)
signal match_started
signal match_ended(winner)

func _ready():
	pass

func start_match(match_mode: String = "ffa"):
	mode = match_mode
	current_phase = 0
	player_count = 4 if mode == "ffa" else 2
	claims = {}
	for i in range(player_count):
		claims[i] = 0.0
	match_started.emit()

func advance_phase():
	if current_phase < 9:
		current_phase += 1
		# Placeholder: simulate claim resolution
		for player in claims:
			claims[player] += randf_range(0.0, 2.0)
		phase_changed.emit(current_phase)
		if current_phase >= 9:
			_end_match()

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
	var winner = claims.keys().max(func(a,b): return claims[a] < claims[b])
	match_ended.emit(winner)
