extends Spatial

var pieces = []
var tile_size = Vector3(4,4,4)
const board_size = Vector2(11,11)
const ray_length = 1000
const block = preload("res://assets/floor_block.tscn")

var game_board = [[],[]]

# Called when the node enters the scene tree for the first time.
func _ready():
	#Load pieces
	for i in range (1,16):
		pieces.append(load("res://assets/Piece_id_" + str(i) + ".tscn"))

	#Make floor
	for i in range (0,12):
		for j in range (0,12):
			var new_piece = block.instance()
			add_child(new_piece)
			new_piece.translate(Vector3(2*i,0,2*j))
			#print(Vector3(2*i, 0, 2*j))
	
	var cursor = get_node("Cursor")
	cursor.set_scale(Vector3(tile_size.x, tile_size.y, 1))
	
	var pos = Vector3(11,0,11)
	spawn_shape_by_id(11, pos)
	spawn_shape_by_id(11, Vector3(0,0,0))
	
func set_game_board_element(vec, element):
	game_board[vec.x][vec.y] = element
	
func get_game_board_element(vec):
	return game_board[vec.x][vec.y]
	
func spawn_shape_by_id(id, position, direction = Vector3.ZERO):
	#ASSUME PRE SNAPPED - Given grid position
	position *= 2#position.snapped(tile_size)
	var new_shape = pieces[id-1].instance()
	
	add_child(new_shape)
	new_shape.translate(position)
	new_shape.rotation.y = atan2(-direction.x, -direction.z)

func spawn_shape(position, direction = Vector3.ZERO):
	randomize()
	position = position.snapped(tile_size)
	var new_shape = pieces[(randi() % len(pieces))].instance()
	
	add_child(new_shape)
	new_shape.translate(position)
	new_shape.rotation.y = atan2(-direction.x, -direction.z)
	
func _input(event):
	if event is InputEventMouseButton:
		var cast = raycast_from_mouse(get_viewport().get_mouse_position(), 1)
		if cast.get("position"):
			
			var pos = world_to_grid(grid_to_world(Vector3(cast.position.x, 5, cast.position.z).snapped(Vector3.ONE * tile_size)))
			#print(pos.x / tile_size.x <= 11)
			var x = pos.x #/ tile_size.x
			var z = pos.z #/ tile_size.z
			if 0 <= x and x <= 22 and 0 <= z and z <= 22:
				spawn_shape(pos)
				print(world_to_grid(grid_to_world(Vector3(cast.position.x, 5, cast.position.z).snapped(Vector3.ONE * tile_size))))
			
	if event is InputEventMouseMotion:
		var cast = raycast_from_mouse(get_viewport().get_mouse_position(), 1)
		if cast.get("position"):
			var tile_hovered = world_to_grid(cast.position)
			
			var cursor = get_node("Cursor")
			
			cursor.translation = Vector3(cast.position.x, 1.5 ,cast.position.z)

	if event.is_action_pressed("ui_left"):
		randomize()
		var new_shape = pieces[(randi() % len(pieces))].instance()
		
		add_child(new_shape)
		
		var position = Vector3((randi() % 9)*2, 5, (randi() % 9) * 2)
		for node in new_shape.get_children():
			for child in node.get_children():
				child.translate(position)


func raycast_from_mouse(m_pos,collision_mask):
	var cam = get_node("Camera")
	var ray_start = cam.project_ray_origin(m_pos)
	var ray_end = ray_start + cam.project_ray_normal(m_pos) * ray_length
	var space_state = get_world().direct_space_state
	return space_state.intersect_ray(ray_start,ray_end, [], collision_mask)

func world_to_grid(pos):
	var v = pos / tile_size
	return Vector3(floor(v.x), floor(v.y), floor(v.z))
	
func grid_to_world(pos):
	var v = pos * tile_size
	return v + tile_size / 2.0
