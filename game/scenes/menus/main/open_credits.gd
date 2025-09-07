extends Button

@onready var bg_gradient: Sprite2D = $"../../bg_gradient"

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/main/credits.tscn")
	##I tried to add a moving transition but gave up. Feel free to try to implement this
	#bg_gradient.position = Vector2(640 , 180)
