extends Panel

var intensity: int = 0  # 0=off, 1=watch, 2=danger, 3=urgent
var threat_colors = {
	0: Color(0.3, 0.3, 0.3, 0.3),
	1: Color(0.831, 0.686, 0.216, 0.5),  # Gold - watch
	2: Color(0.859, 0.078, 0.235, 0.7),  # Red - danger
	3: Color(0.859, 0.078, 0.235, 1.0),  # Bright red - urgent
}

func _ready():
	set_threat(0)

func set_threat(level: int):
	intensity = clamp(level, 0, 3)
	if threat_colors.has(intensity):
		var style = get_theme_stylebox("panel").duplicate()
		style.bg_color = threat_colors[intensity]
		style.corner_radius_top_left = 48
		style.corner_radius_top_right = 48
		style.corner_radius_bottom_right = 48
		style.corner_radius_bottom_left = 48
		add_theme_stylebox_override("panel", style)
