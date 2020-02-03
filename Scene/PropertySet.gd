extends Object

class_name PropertySet

enum Type { TEXT, INT, FLOAT }

var type = -1
var value = null

func _init(type, value):
	self.type = type
	self.value = value

func packed_preprty_panel():
	match type:
		Type.TEXT:
			return load("res://Scene/LineEditPanel.tscn")
#		Type.INT:
#			return load("res://Scene/LineEditPanel.tscn")
#		Type.FLOAT:
#			return load("res://Scene/LineEditPanel.tscn")
	return null
	
func is_valid():
	return type != -1 and value
