extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@export var acceleration: float = 200.0
@export var rotation_speed: float = 150.0

var velocity: Vector2 = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("move_forward"):
		velocity += Vector2.UP.rotated(rotation) * acceleration * delta
	if Input.is_action_pressed("rotate_left"):
		rotation_degrees -= rotation_speed * delta
	if Input.is_action_pressed("rotate_right"):
		rotation_degrees += rotation_speed * delta

	position += velocity * delta
	
	var screen_size = get_viewport_rect().size
	
	position = Utils._wrap_around_screen(position.x, position.y, screen_size.x, screen_size.y)
