class_name Card extends Node


var Card = {}

func _init():
	Card[1] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(-1,1),true],[Vector2(0,2),false],[Vector2(1,2),true],[Vector2(0,3),true]]
	Card[2]  = [[Vector2(0,0), true], [Vector2(0,1), false], [Vector2(0,2), false], [Vector2(1,2), true]]
	Card[3] = [[Vector2(0,0),false],[Vector2(0,1),true],[Vector2(1,0),true]]
	Card[4] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(-1,1),true],[Vector2(0,2),true],[Vector2(1,1),true]]
	Card[5] = [[Vector2(0,0),true],[Vector2(0,1),true]]
	
	Card[6] = [] + Card[5]
	Card[6][1] = [Vector2(0,1),false]
	Card[6] = Card[6].append([[Vector2(0,2),false],[Vector2(0,3),true]])
	
	Card[7] = [] + Card[5]
	Card[7] = Card[7].append([[Vector2(0,2),true],[Vector2(1,1),true]])
	
	Card[8] = [] + Card[7]
	Card[8] = Card[8].append([[Vector2(0,3),true],[Vector2(1,2),true]])
	
	Card[9] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(1,1),false],[Vector2(1,2),true]]
	
	Card[10] = [[Vector2(0,0),true],[Vector2(0,1),false,'sink']]
	Card[11]  = [[Vector2(0,0),false,'sink']]
	
	Card[12] = mirror_horizontal(Card[9])
	Card[13] = mirror_horizontal(Card[2])
	
	Card[14] = mirror_horizontal(Card[1])
	
	Card[15] = [[Vector2(0,0),'connector']]
	
	Card[16] = get_node('root/Game/Bomb')
	
	
	
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


	

