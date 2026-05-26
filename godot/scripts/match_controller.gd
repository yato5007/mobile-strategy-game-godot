extends Node

var current_phase: int = 0
var mode: String = "ffa"
var player_count: int = 4
var claims = {}
var player_names = ["Player 1", "Player 2", "Player 3", "Player 4"]

# Bot configuration
var bot_difficulties = ["easy", "normal", "hard", "expert"]
var bot_styles = ["aggressive", "defensive", "balanced", "objective", "comeback", "team"]

signal phase_changed(phase_index)
signal match_started
signal match_ended(winner_index)

func start_match(match_mode: String = "ffa"):
	mode = match_mode
	current_phase = 0
	player_count = 4
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

# ─── Bot AI System ───────────────────────────────────────────────
# Each bot has a difficulty (decision quality) and a style (decision bias).
# Difficulty affects: action frequency, gain precision, comeback awareness
# Style affects: action family focus, target selection

func _get_bot_difficulty(player_index: int) -> String:
	return bot_difficulties[player_index % bot_difficulties.size()]

func _get_bot_style(player_index: int) -> String:
	return bot_styles[player_index % bot_styles.size()]

func _simulate_bot_actions():
	for player in range(player_count):
		if current_phase > 0:
			var difficulty = _get_bot_difficulty(player)
			var style = _get_bot_style(player)
			_execute_bot_action(player, difficulty, style)

func _execute_bot_action(player: int, difficulty: String, style: String):
	var action_chance = _get_action_chance(difficulty)
	if randf() > action_chance:
		return
	
	var base_gain = _get_base_gain(difficulty)
	var style_mult = _get_style_multiplier(player, style)
	var gain = base_gain * style_mult * randf_range(0.6, 1.4)
	
	# Apply phase-based scaling (action economy per phase)
	var phase_scaling = 1.0 - (current_phase - 1) * 0.03  # slight decay
	gain *= max(0.5, phase_scaling)
	
	claims[player] += gain
	
	if gain > 1.0:
		audio_manager.play("claim_gain", -12.0)

func _get_action_chance(difficulty: String) -> float:
	match difficulty:
		"easy": return 0.5  # misses half its actions
		"normal": return 0.7
		"hard": return 0.85
		"expert": return 0.95
	return 0.7

func _get_base_gain(difficulty: String) -> float:
	match difficulty:
		"easy": return randf_range(0.3, 1.5)
		"normal": return randf_range(0.5, 2.0)
		"hard": return randf_range(0.8, 2.2)
		"expert": return randf_range(1.0, 2.5)
	return randf_range(0.5, 2.0)

func _get_style_multiplier(player: int, style: String) -> float:
	var current = claims.get(player, 0.0)
	var max_claim = 0.0
	for c in claims.values():
		max_claim = max(max_claim, c)
	var gap = max_claim - current
	var is_leading = gap <= 0.5
	var is_trailing = gap >= 2.0
	
	match style:
		"aggressive":
			return 1.3 if is_leading else (0.9 if is_trailing else 1.1)
		"defensive":
			return 0.8 if is_leading else (1.2 if is_trailing else 1.0)
		"balanced":
			return 1.0
		"objective":
			return 1.15
		"comeback":
			return 1.4 if is_trailing else 0.8
		"team":
			return 1.1 if mode == "2v2" else 0.9
	return 1.0

func _resolve_claims():
	_pass()

func _pass():
	pass

func get_phase_name() -> String:
	if current_phase < 9:
		var act = "opening"
		if current_phase >= 3:
			act = "rising"
		if current_phase >= 6:
			act = "final"
		var phase_num = current_phase + 1
		var base = localization.get_string("phase_" + act)
		return base + " · Phase " + str(phase_num)
	return localization.get_string("phase_reveal")

func _end_match():
	var winner = 0
	var max_claim = -1.0
	for i in claims:
		if claims[i] > max_claim:
			max_claim = claims[i]
			winner = i
	match_ended.emit(winner)
