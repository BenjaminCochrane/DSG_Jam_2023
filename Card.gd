class_name Card extends Node

var cardToShape = {}

onready var Shapes = get_node("/root/Game/Shapes")

# get the shape objects on a card!!!

var Card = {}
func _ready():
	Card.set("staggered-junction", Shapes[0])
	Card.set("l-block", Shapes[1])
	Card.set("corner", Shapes[2])
	Card.set("cross-roads", Shapes[3])
	Card.set("small-straight", Shapes[4])
	Card.set("large-straight", Shapes[5])
	Card.set("t-junction", Shapes[6])
	Card.set("two-offroads", Shapes[7])
	Card.set("s", Shapes[8])
	Card.set("lake", Shapes[9])
	Card.set("small-lake", Shapes[10])
	Card.set("z", Shapes[11])
	Card.set("j", Shapes[12])
	Card.set("inv-staggered-junction", Shapes[13])
	Card.set("junction", Shapes[14])
	Card.set("boom-thing", Shapes[15])
	
	print(Card)
