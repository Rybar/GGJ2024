extends Node2D

@onready var next_scene_button = $nextSceneButton

func _ready():
	next_scene_button.connect("pressed", _on_next_scene_button_pressed)

func _on_next_scene_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/minigame5 Sauce The Meatloaf/sauce_the_meatloaf.tscn")