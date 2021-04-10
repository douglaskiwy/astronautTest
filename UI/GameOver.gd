extends CanvasLayer

onready var title = $PanelContainer/MarginContainer/Rows/Title

func set_title(win: bool):
	if win:
		title.text = "You Found The Oxygen!"
		title.modulate = Color.green
	else:
		title.text = "You Didnt Find The Oxygen"
		title.modulate = Color.red

func _on_RestartButton_pressed():
	get_tree().reload_current_scene()
	get_tree().paused=false

func _on_Quit_pressed():
	get_tree().quit()
