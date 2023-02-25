class_name Card extends Node


var shape = "tetromino"
var shape_behaviour = ShapeL.new()


func _init():
	randomize()
	shape = (randi() % 52)

func get_shape_name():
	return shape
func get_shape():
	return shape_behaviour.output()

