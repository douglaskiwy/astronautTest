extends Area2D

signal player_got_oxygen


func _on_O2Cannister_body_entered(_body):
	emit_signal("player_got_oxygen")
	queue_free()
	pass # Replace with function body.
