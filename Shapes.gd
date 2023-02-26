extends ShapeBehaviour

var Shapes = {}
var Cost = {}

onready var Bomb = get_node('root/Game/Bomb')

func _init():
	Shapes[0] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(-1,1),true],[Vector2(0,2),false],[Vector2(1,2),true],[Vector2(0,3),true]]
	Shapes[1]  = [[Vector2(0,0), true], [Vector2(0,1), false], [Vector2(0,2), false], [Vector2(1,2), true]]
	Shapes[2] = [[Vector2(0,0),false],[Vector2(0,1),true],[Vector2(1,0),true]]
	Shapes[3] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(-1,1),true],[Vector2(0,2),true],[Vector2(1,1),true]]
	Shapes[4] = [[Vector2(0,0),true],[Vector2(0,1),true]]
	
	
	Shapes[5] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(0,2),false],[Vector2(0,3),true]]
	
	Shapes[6] = [[Vector2(0,0),true],[Vector2(0,1),true],[Vector2(0,2),true],[Vector2(1,1),true]]
	
	
	Shapes[7] = [[Vector2(0,0),true],[Vector2(0,1),true],[Vector2(0,2),true],[Vector2(1,1),true],[Vector2(0,3),true],[Vector2(1,2),true]]
	
	Shapes[8] = [[Vector2(0,0),true],[Vector2(0,1),false],[Vector2(1,1),false],[Vector2(1,2),true]]
	
	Shapes[9] = [[Vector2(0,0),true],[Vector2(0,1),false,'sink']]
	Shapes[10]  = [[Vector2(0,0),false,'sink']]
	# mirror_horizontal(Shapes[9])
	Shapes[11] = [[Vector2(0,0),false],[Vector2(0,1),true],[Vector2(1,0),false],[Vector2(1,-1),true]]
	Shapes[12] = [[Vector2(0,0),true],[Vector2(1,0),false],[Vector2(1,-1),false],[Vector2(1,-2),true]]
	
	Shapes[13] = [[Vector2(0,0),true],[Vector2(1,0),false],[Vector2(1,1),false],[Vector2(2,0),false],[Vector2(2,-1),true],[Vector2(3,0),true],]
	
	Shapes[14] = [[Vector2(0,0),'connector']]
	
	Shapes[15] = [[Vector2(0,0),'bomb']]
	
	
	calculate_cost()
	
func calculate_cost():	
	for e in Shapes.size():
		Cost[e] = len(Shapes[e])
