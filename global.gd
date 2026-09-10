extends Node
class_name Utils


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

static func _wrap_around_screen(x: float, y: float, screenX: float, screenY: float) -> Vector2:
	pass
	var boundary: float = 100.0
	if x < 0 - boundary:
		x = screenX
	elif x > screenX + boundary:
		x = 0
	if y < 0 - boundary:
		y = screenY
	elif y > screenY + boundary:
		y = 0
	return Vector2(x, y)
