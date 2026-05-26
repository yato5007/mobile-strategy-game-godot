extends Panel

var level: int = 0  # 0=unlit, 1=lit, 2=bright
var lantern_colors = {
	0: Color(0.2, 0.2, 0.2, 0.3),
	1: Color(0.831, 0.686, 0.216, 0.6),
	2: Color(0.859, 0.078, 0.235, 0.8),
}

func _ready():
	set_level(0)

func set_level(lvl: int):
	level = clamp(lvl, 0, 2)
	if lantern_colors.has(level):
		var style = get_theme_stylebox("panel").duplicate()
		style.bg_color = lantern_colors[level]
		add_theme_stylebox_override("panel", style)
		$Glow.size = size
