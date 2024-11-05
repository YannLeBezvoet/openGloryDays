extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"LevelContainer/HBoxContainer/Level 1".grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/menu.tscn")


func _on_level_1_pressed() -> void:
	pass # Replace with function body.
