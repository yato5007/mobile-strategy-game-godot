extends Control

var match_phase: int = 0
var player_claim: float = 0.0
var phase_names = [
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

func _ready():
	$BgPanel/PlayerArea/ActionPanel/SealButton.pressed.connect(_on_seal_pressed)
	_init_player_banners()
	_update_display()

func _init_player_banners():
	var banners = [
		$BgPanel/PlayerArea/Player1Banner,
		$BgPanel/PlayerArea/Player2Banner,
		$BgPanel/PlayerArea/Player3Banner,
		$BgPanel/PlayerArea/Player4Banner,
	]
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
		banners[i].add_theme_stylebox_override("panel", style)
		var label = Label.new()
		label.text = names[i] + ": 0.0"
		label.add_theme_font_size_override("font_size", 12)
		label.position = Vector2(4, 4)
		banners[i].add_child(label)
		banners[i].set_meta("player_id", i)

func start_match():
	match_phase = 0
	player_claim = 0.0
	_update_display()

func advance_phase():
	if match_phase < 8:
		match_phase += 1
		# Simulate claim gain for testing
		player_claim += 1.5 + randf_range(-0.5, 1.0)
		_update_display()

func _update_display():
	var phase_text = phase_names[match_phase] if match_phase < 9 else "Final Majlis Reveal"
	$BgPanel/InfoRow/PhaseLabel.text = phase_text
	$BgPanel/InfoRow/ClaimLabel.text = "Your Claim: %.1f" % player_claim

func _on_seal_pressed():
	advance_phase()

func _input(event):
	if event is InputEventScreenTouch and event.pressed:
		advance_phase()
