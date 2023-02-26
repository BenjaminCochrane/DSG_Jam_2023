extends TextureButton

onready var card = get_node("/root/Game/Card")


func _ready():
	pass # Replace with function body.

	
func _pressed():
	get_tree().change_scene("res://Level.tscn")
	var testcard = card.get("l-block")
	print(testcard)
