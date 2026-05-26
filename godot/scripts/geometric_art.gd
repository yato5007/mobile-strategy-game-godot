extends Control

var pattern_seed: int = 0

func _ready():
	queue_redraw()

func _draw():
	# Draw geometric motif on the board background
	var gold = Color(0.831, 0.686, 0.216, 0.15)
	var deep = Color(0.502, 0.251, 0.0, 0.2)
	
	# Center medallion
	var center = Vector2(180, 230)
	_draw_medallion(center, 80.0, gold)
	
	# Corner motifs
	_draw_medallion(Vector2(40, 80), 30.0, deep)
	_draw_medallion(Vector2(320, 80), 30.0, deep)
	_draw_medallion(Vector2(40, 380), 30.0, deep)
	_draw_medallion(Vector2(320, 380), 30.0, deep)
	
	# Carpet border lines
	for i in range(6):
		var x = 10.0 + i * 68.0
		var alpha = 0.1 + i * 0.02
		draw_line(Vector2(x, 5), Vector2(x, 635), Color(0.831, 0.686, 0.216, alpha), 1.0)

func _draw_medallion(center: Vector2, size: float, color: Color):
	# Outer circle
	draw_circle(center, size * 0.5, color * 0.3)
	draw_circle(center, size * 0.5, color * 0.6, false, 2.0)
	
	# Inner circle
	draw_circle(center, size * 0.3, Color(0.831, 0.686, 0.216, 0.1))
	
	# 8-point star (diamond pattern)
	var points = PackedVector2Array()
	for i in range(8):
		var angle = deg_to_rad(i * 45)
		var radius = size * 0.35 if i % 2 == 0 else size * 0.2
		points.append(center + Vector2(cos(angle), sin(angle)) * radius)
	draw_polygon(points, [color * 0.4])

	# Center dot
	draw_circle(center, 3.0, Color(0.831, 0.686, 0.216, 0.8))
