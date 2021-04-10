extends YSort

const Player = preload("res://Player/Player.tscn")
const GameOverScreen = preload("res://UI/GameOver.tscn")

onready var oxygen = $Oxygen
onready var o2Cannister = $O2Cannister

func _ready() -> void:
	oxygen.connect("player_lost_all_oxygen", self, "handle_player_lost")
	o2Cannister.connect("player_got_oxygen", self, "handle_player_win")


func handle_player_lost():
	var game_over = GameOverScreen.instance()
	add_child(game_over)
	game_over.set_title(false)
	get_tree().paused=true


func handle_player_win():
	var game_over = GameOverScreen.instance()
	add_child(game_over)
	game_over.set_title(true)
	get_tree().paused=true
