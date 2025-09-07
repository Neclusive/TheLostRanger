extends Button

@onready var bg_gradient: Sprite2D = $"../../bg_gradient"

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/main/settings.tscn")
