extends Area2D
@export var speed = 400
enum enum_direction {left, right}
var direction
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction = enum_direction.left


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if direction == enum_direction.left:
		velocity.x -= 1
	if direction == enum_direction.right:
		velocity.x += 1
	if Input.is_action_pressed("right"):
		direction = enum_direction.right
	if Input.is_action_pressed("left"):
		direction = enum_direction.left
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	position += velocity * delta
