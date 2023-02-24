class_name Card extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var shape = "tetromino"

var shape_behaviour = ShapeL.new()

# Called when the node enters the scene tree for the first time.
func _init():
	randomize()
	shape = (randi() % 52)

#func get_shape():
#	return shape_behavior.output()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
