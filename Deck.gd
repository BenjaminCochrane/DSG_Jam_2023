extends Node

var deck = []

var _discard = []

#const card = preload("")
#class_name Card, "res://Card.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	#deck.shuffle()
	for i in range(3):
		deck.append(Card.new())

func give_one_card():
	deck.pop_front()

func refill_deck():
	randomize()
	_discard.shuffle()
	deck = _discard
