extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var deck = []

#const card = preload("")
#class_name Card, "res://Card.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	#deck.shuffle()
	for i in range(3):
		deck.append(Card.new())

	for card in deck:
		print(card.get_shape())


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
