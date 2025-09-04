extends Control

@onready var progress_bar: ProgressBar = $ProgressBar

var progress = []
var screen_name
var screen_load_status = 0

func _ready() -> void:
	screen_name = "res://scenes/dungeon.tscn"
	ResourceLoader.load_threaded_request(screen_name)
	Fade.set_anchors_and_offsets_preset(Control.PRESET_TOP_LEFT)
	
func _process(delta: float) -> void:
	screen_load_status = ResourceLoader.load_threaded_get_status(screen_name,progress)
	progress_bar.value = floor(progress[0]*100)
	if screen_load_status == ResourceLoader.THREAD_LOAD_LOADED:
		var newScene = ResourceLoader.load_threaded_get(screen_name)
		get_tree().change_scene_to_packed(newScene)
