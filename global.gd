extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _wrap_around_screen(float x, float y):
	var screen_size = get_viewport_rect().size
	if x < 0:
		x = screen_size.x
	elif x > screen_size.x:
		x = 0
	if y < 0:
		y = screen_size.y
	elif y > screen_size.y:
		y = 0