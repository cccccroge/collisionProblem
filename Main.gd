extends Node2D

onready var wall_1 = get_node("Wall1")
onready var wall_2 = get_node("Wall2")
onready var timer = get_node("Timer")



func _ready():
	wall_1.connect("body_enter", self, "_on_Wall1_body_enter")
	wall_2.connect("body_enter", self, "_on_Wall2_body_enter")
	timer.connect("timeout", self, "_on_Timer_timeout")


func _on_Wall1_body_enter( body ):
	print("hit wall 1 !")
	body.enable_collision(false)
	print("start timer")
	timer.start()


func _on_Wall2_body_enter( body ):
	print("hit wall 2 !")


func _on_Timer_timeout():
	print("timeout!")
	get_node("Ball").enable_collision(true)

