extends Area2D

@export var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	noresponse(delta)
	
func move_player():
	var direction = Vector2.ZERO
	if Input.is_action_pressed("up"):
		direction.y -= 1
	elif Input.is_action_pressed("down"):
		direction.y += 1
	elif Input.is_action_pressed("left"):
		direction.x -= 1
	elif Input.is_action_pressed("right"):
		direction.x += 1		
	
	position += direction * 1 * speed

func noresponse(delta):
	

func _on_timer_timeout():
	while _process(delta):	
		move_player()
	
