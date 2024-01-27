extends Node2D


@onready var minigame_timer = $TimerShow/minigame_timer
@onready var timer_show = $TimerShow


@onready var score_1 = $"Meatloaf Scores2/Score 1"
@onready var score_2 = $"Meatloaf Scores2/Score 2"
@onready var score_3 = $"Meatloaf Scores2/Score 3"
@onready var score_4 = $"Meatloaf Scores2/Score 4"
@onready var score_5 = $"Meatloaf Scores2/Score 5"
@onready var score_6 = $"Meatloaf Scores2/Score 6"
@onready var back_to_title_button = $back_to_title_button
@onready var play_again_button = $play_again_button

func _ready():
	back_to_title_button.connect("pressed", _on_back_to_title_pressed)
	play_again_button.connect("pressed", _on_play_again_pressed)
func _process(_delta):
	pass
	
func _on_back_to_title_pressed():
	SceneSwitcher.switch_scene("res://Scenes/00 Title/title.tscn")
	
func _on_play_again_pressed():
	SceneSwitcher.switch_scene("res://Scenes/RV on the road/RV.tscn")
