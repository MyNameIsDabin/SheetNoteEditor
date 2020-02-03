extends Panel

class_name PropertyGroup

onready var packed_property = preload("res://Scene/Property.tscn")
onready var property_container = $MarginContainer/PropertyList

var group_name = ""
var properties = []
var propery_map = {}

func _ready():
	pass

func add_property(name, propertySet: PropertySet):
	var property_node = packed_property.instance()
	property_node.set_property(name, propertySet)
	properties.push_back(property_node)
	propery_map[name] = property_node
	property_container.add_child(property_node)
