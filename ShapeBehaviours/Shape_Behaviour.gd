class_name ShapeBehaviour extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var blocks = []
var id : int
var input_water_level : int
var input_tile : Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func input(water_level, tile):
	#takes a place that water comes from and a water level
	input_water_level = water_level
	input_tile = tile

func output():
	#takes input and uses blocks to determine output
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
