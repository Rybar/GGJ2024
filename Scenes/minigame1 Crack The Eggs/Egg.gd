extends RigidBody2D

var dragging:bool = false
var left_over:bool
var right_over:bool
var grabber_position:Vector2
@onready var egg_area = $egg_area

func _ready():
	egg_area.connect("area_entered", _on_area_2d_hand_entered)
	egg_area.connect("area_exited", _on_area_2d_hand_exited)
	self.connect("input_event", _on_Draggable_input_event)
	
func _process(delta):
	dragging = Global.is_left_pinching
	if dragging:
		var distance:float = global_position.distance_to(grabber_position)
		var direction:Vector2 = global_position.direction_to(grabber_position)
		
		var speed: float = 10
		
		var velocity = direction * speed
		move_and_collide(velocity)
	
func _on_area_2d_hand_entered(area:Area2D):
	grabber_position = area.global_position
	if area.name == "left_grabber":
		left_over = true
		if not Global.is_left_dragging:
			scale = Vector2(1.05, 1.05)
	if area.name == "right_grabber":
		right_over = true
		
		if not Global.is_right_dragging:
			scale = Vector2(1.05, 1.05)

func _on_area_2d_hand_exited(area:Area2D):
	if area.name == "left_grabber":
		left_over = false
	if area.name == "right_grabber":
		right_over = false
	if left_over == false and right_over == false:
		scale = Vector2(1.0, 1.0)
	
func _on_Draggable_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventJoypadButton or event is InputEventJoypadMotion:
		if left_over:
			dragging = Global.is_left_pinching
		elif right_over:
			dragging = Global.is_left_pinching
	#
