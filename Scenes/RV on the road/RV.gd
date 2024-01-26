extends Node2D

@onready var next_scene_button = $nextSceneButton

func _ready():
	next_scene_button.connect("pressed", _on_next_scene_button_pressed)

func _on_next_scene_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/minigame1 Crack The Eggs/crack_the_eggs.tscn")
