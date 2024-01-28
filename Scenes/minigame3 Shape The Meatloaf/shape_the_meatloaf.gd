extends Node2D

@onready var next_scene_button = $nextSceneButton
@onready var minigame_timer = $TimerShow/minigame_timer
@onready var timer_show = $TimerShow
@onready var meat_bit:PackedScene = preload("res://Scenes/meat_bit.tscn")
@onready var meat_bit_container = $"meat_bit container"

@export var meat_count:int = 400

func _ready():
	next_scene_button.connect("pressed", _on_next_scene_button_pressed)
	minigame_timer.connect("timeout", _on_minigame_timer_timeout)
	for i in meat_count:
		var meatbit = meat_bit.instantiate()
		meatbit.position = Vector2( randf_range(100,1800), randf_range(300,900))
		meatbit.rotation = randf() * 2 * PI
		meat_bit_container.add_child(meatbit)
func _on_next_scene_button_pressed():
	SceneSwitcher.switch_scene("res://Scenes/minigame4 Cook The Meatloaf/cook_the_meatloaf.tscn")


func _on_minigame_timer_timeout():
	_on_next_scene_button_pressed()

func _process(_delta):
	timer_show.text = str(minigame_timer.time_left)
