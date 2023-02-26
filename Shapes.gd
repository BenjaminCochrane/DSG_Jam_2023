extends ShapeBehaviour

var Shapes = {}
var Cost = {}

onready var Bomb = get_node('root/Game/Bomb')

#each block vector has a tuple of input/output
#directions, each with true or false, this tuple is
# in the form:
#(north, east, south, west) e.g. a block with an input/
#output in the north and west: (1,0,0,1)
#(0,0,0,0)

func _init():
	Shapes[0] = [[Vector2(0,0),[0,0,0,1],[Vector2(1,0),[0,0,0,0]],[Vector2(1,-1),[1,0,0,0]],[Vector2(2,0),[0,0,0,0]],[Vector2(2,1),[0,0,1,0]],[Vector2(3,0),[0,1,0,0]]]]
	
	Shapes[1]  = [[Vector2(0,0), [0,0,0,0]],[Vector2(0,-1), [1,0,0,0]],[Vector2(0,1), [0,0,0,0]], [Vector2(1,1), [0,1,0,0]]]
	Shapes[2] = [[Vector2(0,0),[0,0,0,0]],[Vector2(0,1),[0,0,1,0]],[Vector2(1,0),[0,1,0,0]]]
	Shapes[3] = [[Vector2(0,0),[0,0,0,1]],[Vector2(0,1),[0,0,0,0]],[Vector2(-1,1),[1,0,0,0]],[Vector2(0,2),[0,1,0,0]],[Vector2(1,1),[0,0,1,0]]]
	Shapes[4] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,1,0]]]
	
	
	Shapes[5] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]],[Vector2(0,2),[0,0,0,0]],[Vector2(0,3),[0,0,1,0]]]
	
	Shapes[6] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]],[Vector2(0,2),[0,0,1,0]],[Vector2(1,1),[0,1,0,0]]]
	
	
	Shapes[7] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]],[Vector2(0,2),[0,0,0,0]],[Vector2(0,3),[0,0,1,0]],[Vector2(1,1),[0,1,0,0]],[Vector2(1,2),[0,1,0,0]]]
	
	Shapes[8] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]],[Vector2(1,1),[0,0,0,0]],[Vector2(1,2),[0,0,1,0]]]
	
	Shapes[9] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]]]#lake
	Shapes[10]  = [[Vector2(0,0),[1,0,0,0]]] #lake
	# mirror_horizontal(Shapes[9])
	Shapes[11] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]],[Vector2(-1,1),[0,0,0,0]],[Vector2(-1,2),[0,0,1,0]]]
	Shapes[12] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]],[Vector2(0,2),[0,0,0,0]],[Vector2(-1,2),[0,0,0,1]]]
	
	Shapes[13] = [[Vector2(0,0),[0,0,0,1]],[Vector2(1,0),[0,0,0,0]],[Vector2(1,1),[0,0,1,0]],[Vector2(2,0),[0,0,0,0]],[Vector2(2,-1),[1,0,0,0]],[Vector2(3,0),[0,1,0,0]]]
	
	Shapes[14] = [[Vector2(0,0),[1,0,0,1]]] #connector
	
	#new shapes:
	Shapes[15] = [[Vector2(0,0),[1,0,0,0]],[Vector2(0,1),[0,0,0,0]], [Vector2(0,2),[0,0,1,0]]]
	Shapes[16] = [[Vector2(0,0),[0,0,0,0]], [Vector2(1,0),[0,1,0,0]], [Vector2(0,1),[0,0,0,0]], [Vector2(0,2),[0,0,0,0]], [Vector2(1,2),[0,1,0,0]]]
	#Shapes[17] = [[Vector2(0,0),[1,0,1,0]]] duplicate of 14
	Shapes[17] = [[Vector2(0,0),[0,0,1,1]]]
	Shapes[18] = [[Vector2(0,0),[1,0,1,1]]]
	Shapes[19] = [[Vector2(0,0),[1,1,1,1]]]
	
	#moved bomb
	Shapes[20] = [[Vector2(0,0),[0,0,0,0]]] #bomb/blank tile
	
	calculate_cost()
	
func calculate_cost():
	for e in Shapes.size():
		Cost[e] = len(Shapes[e])
