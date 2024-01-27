extends Node2D

@onready var next_scene_button = $nextSceneButton
@onready var minigame_timer = $TimerShow/minigame_timer
@onready var timer_show = $TimerShow

func _ready():
	next_scene_button.connect("pressed", _on_next_scene_button_pressed)
	minigame_timer.connect("timeout", _on_minigame_timer_timeout)

func _on_next_scene_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/minigame2 Mix The Meatloaf/mix_the_meatloaf.tscn")


func _on_minigame_timer_timeout():
	_on_next_scene_button_pressed()

func _process(_delta):
	timer_show.text = str(minigame_timer.time_left)
