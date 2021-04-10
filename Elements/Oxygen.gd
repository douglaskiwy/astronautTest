extends Label

signal player_lost_all_oxygen

onready var timer = $Timer
var oxygen = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	redraw()
	timer.wait_time = 0.1
	timer.one_shot = false
	timer.connect("timeout", self, "timeout_handler")
	timer.start()

func _process(_delta):
	redraw()
	
func redraw():
	var display_oxygen = str(oxygen)
	self.text = "Oxygen:" + display_oxygen

func timeout_handler():
	if oxygen > 0:
		oxygen -= 1
	else :
		oxygen = 0
		emit_signal("player_lost_all_oxygen")
	redraw()
	
