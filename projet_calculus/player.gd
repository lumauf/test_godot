extends Sprite2D

var current_position = [0,0]

func _input(event):
	
	if event.is_action_pressed("up"):
		current_position[1] -= 128
	elif event.is_action_pressed("down"):
		current_position[1] += 128
	elif event.is_action_pressed("left"):
		current_position[0] -= 128
	elif event.is_action_pressed("right"):
		current_position[0] += 128
		
	self.position = Vector2(current_position[0],current_position[1])

#@onready var tile_map = $"../TileMap"
#@onready var sprite_2d = $Sprite2D

#var is_moving = false

#func _physics_process(delta):
#	if is_moving == false:
#		return
	
#	if global_position == sprite_2d.global_position:
#		is_moving = false
#		return
		
#	sprite_2d.global_position = sprite_2d.global_position.move_toward(global_position, 1)
	
#func _process(delta):
#	if is_moving:
#		return

#	if Input.is_action_pressed("up"):
#		move(Vector2.UP)
#	elif Input.is_action_pressed("down"):
#		move(Vector2.DOWN)
#	elif Input.is_action_pressed("left"):
#		move(Vector2.LEFT)
#	elif Input.is_action_pressed("right"):
#		move(Vector2.RIGHT)
		
#func move(direction: Vector2):
	# Get current tile Vector2i
#	var current_tile: Vector2i = tile_map.local_to_map(global_position)
	# Get target tile Vector2i	
#	var target_tile: Vector2i = Vector2i(
#		current_tile.x + direction.x,
#		current_tile.y + direction.y,		
#	)
	
	# Move player
#	is_moving = true
	
#	global_position = tile_map.map_to_local(target_tile)
	
#	sprite_2d.global_position = tile_map.map_to_local(current_tile)
