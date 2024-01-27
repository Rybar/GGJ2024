extends Node2D
@onready var next_scene_button = $nextSceneButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_next_scene_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/RV on the road/RV.tscn")
