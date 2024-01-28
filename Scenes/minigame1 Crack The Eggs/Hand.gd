extends CharacterBody2D
@onready var hand_animator:AnimationPlayer = $Close_Hand_Animation
@onready var squeeze_amount:Label = $squeeze_amount

@export var speed:int = 500
@export var push_force:float = 80.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var squeeze = Input.get_action_raw_strength("right squeeze")
	hand_animator.play("close_hand")
	hand_animator.seek(squeeze)
	squeeze_amount.text = str(squeeze)
	Global.is_right_pinching = squeeze > 0.7
	
	var direction = Input.get_vector("right_stick_left", "right_stick_right", "right_stick_up", "right_stick_down").normalized()
	velocity = direction * speed
	move_and_slide()
	
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)
