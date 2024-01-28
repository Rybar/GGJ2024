extends Node2D
@onready var next_scene_button = $nextSceneButton
@onready var audio_placeholder_timer = $audioPlaceholderTimer


# Called when the node enters the scene tree for the first time.
func _ready():
	next_scene_button.connect("pressed", _on_next_scene_button_pressed)
	audio_placeholder_timer.connect("pressed", _on_next_scene_button_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_next_scene_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/00 Title/title.tscn")
