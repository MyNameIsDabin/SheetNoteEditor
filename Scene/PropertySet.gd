extends Object

class_name PropertySet

enum Type { TEXT, INT, FLOAT, FILE, MUSIC_FILE }

var type = -1
var value = null

func _init(type, value):
	self.type = type
	self.value = value

func proprty_panel_node(option = {}):
	var packed_scene = null
	var panel_node = null
	match type:
		Type.TEXT:
			packed_scene = load("res://Scene/LineEditPanel.tscn")
		Type.INT:
			packed_scene = load("res://Scene/NumericPanel.tscn")
		Type.FLOAT:
			packed_scene = load("res://Scene/NumericPanel.tscn")
		Type.FILE:
			packed_scene = load("res://Scene/FilePanel.tscn")
		Type.MUSIC_FILE:
			packed_scene = load("res://Scene/MusicFilePanel.tscn")
	panel_node = packed_scene.instance()
	panel_node.set_option(option)
	return panel_node
	
func is_valid():
	return type != -1 and value
