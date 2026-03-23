extends Node2D
class_name PlayerInput2D
signal moved(action:String)
@export var target:CharacterBody2D 
@export var movementX:float = 10
@export var movementY:float = 10
@export var negMovementX:float = 10
@export var negMovementY:float = 10
@export var multiply:int = 1
@export var deacceleration:float = 10
func _process(delta: float) -> void:
	if Input.is_anything_pressed():
		if Input.is_action_pressed("move_down"):
			target.velocity.y += movementY * multiply
			moved.emit("move_down")
		if Input.is_action_pressed("move_up"):
			target.velocity.y += -negMovementY * multiply
			moved.emit("move_up")
		if Input.is_action_pressed("move_left"):
			target.velocity.x += -negMovementX * multiply
			moved.emit("move_left")
		if Input.is_action_pressed("move_right"):
			target.velocity.x += movementX * multiply
			moved.emit("move_right")
	else:
		target.velocity += -target.velocity.move_toward(Vector2(0,0),delta) / deacceleration 
	target.move_and_slide()
# why so uwu buldege when he skeep on mre??
