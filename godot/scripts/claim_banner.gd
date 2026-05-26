extends Panel

var player_id: int = 0
var claim_value: float = 0.0
var player_name: String = "Player"
var player_colors = {
	0: Color(0.859, 0.078, 0.235),  # Crimson
	1: Color(0.059, 0.318, 0.729),  # Sapphire  
	2: Color(0.314, 0.784, 0.471),  # Emerald
	3: Color(0.831, 0.686, 0.216),  # Gold (default)
}

func _ready():
	_update_display()

func set_claim(value: float):
	claim_value = value
	_update_display()

func get_claim() -> float:
	return claim_value

func set_player_name(name: String):
	player_name = name
	_update_display()

func set_player_id(id: int):
	player_id = id
	if player_colors.has(id):
		var style = get_theme_stylebox("panel").duplicate()
		style.bg_color = player_colors[id]
		add_theme_stylebox_override("panel", style)

func _update_display():
	$PlayerName.text = player_name
	$ClaimValue.text = "%.1f" % claim_value
