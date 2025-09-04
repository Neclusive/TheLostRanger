extends Button

func _on_pressed() -> void:
	Fade.set_anchors_and_offsets_preset(Control.PRESET_CENTER)
	Fade.transition_in()
	await Fade.on_animation_finished
	var new_scene = load("res://scenes/loading.tscn")
	get_tree().change_scene_to_packed(new_scene)
