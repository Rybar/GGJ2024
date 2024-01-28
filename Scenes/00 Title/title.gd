extends Node2D

@onready var start_button = $StartButton
@onready var replay_intro_button = $ReplayIntroButton

func _ready():
	start_button.connect("pressed", on_start_button_pressed)
	replay_intro_button.connect("pressed", _on_replay_button_pressed)

func on_start_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/RV on the road/RV.tscn")
	
func _on_replay_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/00 Intro/Intro.tscn")
