extends Area2D

@export var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_player(delta)
	
func move_player(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("up"):
		direction.y -= 1
		await get_tree().create_timer(1).timeout
	if Input.is_action_pressed("down"):
		direction.y += 1
		await get_tree().create_timer(1).timeout
	if Input.is_action_pressed("left"):
		direction.x -= 1
		await get_tree().create_timer(1).timeout
	if Input.is_action_pressed("right"):
		direction.x += 1
		await get_tree().create_timer(1).timeout
	
	position += direction * delta * speed
		
	
	
