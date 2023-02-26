extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
enum STATUS {ARMED,DISCARDED,PLAYED,NULL}
var status = STATUS.NULL

# Called when the node enters the scene tree for the first time.
func _init():
	status = STATUS.ARMED

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
