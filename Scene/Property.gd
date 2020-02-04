extends HBoxContainer

class_name Property

func _ready():
	pass 

func set_property(name, propertySet: PropertySet):
	$Name.text = name
	var panel_node = propertySet.proprty_panel_node()
	panel_node.set_value(propertySet)
	add_child(panel_node)

func _on_Property_gui_input(event):
	pass
