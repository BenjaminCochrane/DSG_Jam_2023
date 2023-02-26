class_name Card extends Node

var cardToShape = {}
var shapeID
var shape
var cardName


onready var Shapes = get_node("/root/Game/Shapes")

# get the shape objects on a card!!!

var titleList = []
func _ready():
	Card.append("staggered-junction")
	Card.append("l-block")
	Card.append("corner")
	Card.append("cross-roads")
	Card.append("small-straight")
	Card.append("large-straight")
	Card.append("t-junction")
	Card.append("two-offroads")
	Card.append("s")
	Card.append("lake")
	Card.append("small-lake")
	Card.append("z")
	Card.append("j")
	Card.append("inv-staggered-junction")
	Card.append("junction")
	Card.append("boom-thing")
	
	print(Card)

func _init(id):
	self.shapeID = id
	self.shape = Shapes[id]
	self.cardName = titleList[id]
	
func get_ID():
	return self.shapeID
	
func get_shape():
	return self.shape

func get_card_name():
	return self.cardName
