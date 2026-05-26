extends Node

var audio_players = {}
var sfx_files = {
	"action_select": "res://assets/audio/action_select.wav",
	"action_confirm": "res://assets/audio/action_confirm.wav",
	"phase_start": "res://assets/audio/phase_start.wav",
	"phase_resolve": "res://assets/audio/phase_resolve.wav",
	"claim_gain": "res://assets/audio/claim_gain.wav",
	"leader_threat": "res://assets/audio/leader_threat.wav",
	"comeback_cue": "res://assets/audio/comeback_cue.wav",
	"win_fanfare": "res://assets/audio/win_fanfare.wav",
	"loss_sound": "res://assets/audio/loss_sound.wav",
	"seal_stamp": "res://assets/audio/seal_stamp.wav",
	"button_click": "res://assets/audio/button_click.wav",
}

func _ready():
	for name in sfx_files:
		_load_sfx(name)

func _load_sfx(name: String):
	var path = sfx_files.get(name, "")
	if path == "":
		return
	var stream = ResourceLoader.load(path)
	if stream:
		var player = AudioStreamPlayer.new()
		player.stream = stream
		player.name = name
		add_child(player)
		audio_players[name] = player

func play(sfx_name: String, volume_db: float = 0.0):
	if audio_players.has(sfx_name):
		var player = audio_players[sfx_name]
		player.volume_db = volume_db
		player.play()
