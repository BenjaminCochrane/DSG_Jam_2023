class_name ShapeL extends ShapeBehaviour

#
#
##

var direction_offsets = {"right": [1, 0], "left": [-1, 0], "up": [0, -1], "down": [0, 1]}
var offset = [[Vector2(0,0), false], [Vector2(0,1), false], [Vector2(0,2), false], [Vector2(1,2), true, ["right"], -4]]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func output():
	var output = []
	for block in offset:
		if block[1]:
			for direction in block[2]:
				output.append([[input_tile.x + block[0][0] + direction_offsets[direction][0], input_tile.y + block[0][1] + direction_offsets[direction][1]], input_water_level + block[3]])
				#output.append(Vector2(input_tile.x + 1, input_tile.y + 2))
	
	print("Input tile: ", input_tile)
	print("Input water level: ", input_water_level)
	print("Output: ", output)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
