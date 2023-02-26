class_name ShapeBehaviour extends Node

var input_water_level : int
var input_tile : Vector2
var direction_offsets = {"right": [1, 0], "left": [-1, 0], "up": [0, -1], "down": [0, 1]}

func input(water_level, tile):
	#takes a place that water comes from and a water level
	input_water_level = water_level
	input_tile = tile
