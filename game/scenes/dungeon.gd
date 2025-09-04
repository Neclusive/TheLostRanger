extends Node2D

func _ready() -> void:
	fade()

func fade():
	Fade.set_anchors_and_offsets_preset(Control.PRESET_TOP_LEFT)
	Fade.transition_out()
	await Fade.on_animation_finished

func _process(delta: float) -> void:
	pass
