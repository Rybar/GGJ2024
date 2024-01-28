extends Node

var is_left_dragging:bool
var is_right_dragging:bool
var is_left_pinching:bool
var is_right_pinching:bool

enum {EGGS,MIX,SHAPE,COOK,SAUCE,GRANNY}

@export var mini_game_scores:Array[float] = [
	0,0,0,0,0
]
@export var number_of_days_played: int = 0

@export var meatloaf_quality_scores:Array[float] = [
	0,0,0,0,0
]
@export var meatloaf_slice_score: float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
