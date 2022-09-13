extends Node2D

var velocity = Vector2.ZERO 
var inital_speed = 3.0 

func _ready():
	velocity = Vector2(0,inital_speed*randf()).rotated(PI*2*randf()) 
	pass

func _physics_process(delta):
	position = position + velocity 
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)
