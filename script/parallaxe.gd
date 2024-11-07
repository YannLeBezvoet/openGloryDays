extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Parallax2D/Sprite2D.modulate = Color(0, 0, 255)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
