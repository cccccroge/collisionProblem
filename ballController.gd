extends RigidBody2D

export(int) var SPEED
var default_shape


func _ready():
	default_shape = get_node("CollisionShape2D").get_shape()
	set_fixed_process(true)


func _fixed_process(delta):
	if Input.is_action_pressed("ui_up"):
		apply_impulse(Vector2(0, 0), Vector2(0, -SPEED * delta))
	if Input.is_action_pressed("ui_down"):
		apply_impulse(Vector2(0, 0), Vector2(0, SPEED * delta))
	if Input.is_action_pressed("ui_left"):
		apply_impulse(Vector2(0, 0), Vector2(-SPEED * delta, 0))
	if Input.is_action_pressed("ui_right"):
		apply_impulse(Vector2(0, 0), Vector2(SPEED * delta, 0))


func enable_collision( boolean ):
	if boolean == true:
		print("enable collision")
		#get_node("CollisionShape2D").set_pos(Vector2(0, 0))
		add_shape(default_shape)
	
	elif boolean == false:
		print("disable collision")
		#get_node("CollisionShape2D").set_pos(Vector2(-1000, -1000))
		clear_shapes()

