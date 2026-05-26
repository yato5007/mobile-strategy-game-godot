extends TextureRect

@onready var seal_tween: Tween

func _ready():
	modulate = Color(0.5, 0.5, 0.5, 0.5)

func play_seal():
	modulate = Color(1, 1, 1, 1)
	if seal_tween and seal_tween.is_running():
		seal_tween.kill()
	seal_tween = create_tween()
	seal_tween.tween_property(self, "modulate", Color(0.5, 0.5, 0.5, 0.5), 0.6)
	seal_tween.tween_callback(_on_seal_complete)

func _on_seal_complete():
	modulate = Color(1, 1, 1, 1)
