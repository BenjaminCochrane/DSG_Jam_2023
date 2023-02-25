extends ShapeBehaviour

var Shapes = {}

func _init():
	Shapes[1] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(-1,1),true],[Vector2(0,2),false],[Vector2(1,2),true],[Vector2(0,3),true]]
	Shapes[2]  = [[Vector2(0,0), true], [Vector2(0,1), false], [Vector2(0,2), false], [Vector2(1,2), true]]
	Shapes[3] = [[Vector2(0,0),false],[Vector2(0,1),true],[Vector2(1,0),true]]
	Shapes[4] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(-1,1),true],[Vector2(0,2),true],[Vector2(1,1),true]]
	Shapes[5] = [[Vector2(0,0),true],[Vector2(0,1),true]]
	
	Shapes[6] = [] + Shapes[5]
	Shapes[6][1] = [Vector2(0,1),false]
	Shapes[6] = Shapes[6].append([[Vector2(0,2),false],[Vector2(0,3),true]])
	
	Shapes[7] = [] + Shapes[5]
	Shapes[7] = Shapes[7].append([[Vector2(0,2),true],[Vector2(1,1),true]])
	
	Shapes[8] = [] + Shapes[7]
	Shapes[8] = Shapes[8].append([[Vector2(0,3),true],[Vector2(1,2),true]])
	
	Shapes[9] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(1,1),false],[Vector2(1,2),true]]
	
	Shapes[10] = [[Vector2(0,0),true],[Vector2(0,1),false,'sink']]
	Shapes[11]  = [[Vector2(0,0),false,'sink']]
	
	Shapes[12] = mirror_horizontal(Shapes[9])
	Shapes[13] = mirror_horizontal(Shapes[2])
	
	Shapes[14] = mirror_horizontal(Shapes[1])
	
	Shapes[15] = [[Vector2(0,0),'connector']]
	
	Shapes[16] = get_node('root/Game/Bomb')
	
	
	
func mirror_horizontal(arr: Array):
	var result = []
	
	for i in range(arr.size()):
		var row = []
		for j in range(arr[i].size()):
			if arr[i][j] is Vector2:
				var mirror_v = Vector2(arr[i][arr[i].size() - j - 1].x, arr[i][j].y)
				row.append(mirror_v)
			else:
				row.append(arr[i][j])
		result.append(row)
	
	return result


	

