extends Object

class_name SheetNote

var data = {
	"name" : PropertySet.new(PropertySet.Type.TEXT, ""),
	"bpm" : PropertySet.new(PropertySet.Type.TEXT, .0),
}

func get_property(key):
	return data[key]

func set_property(key, value, type=-1):
	if type == -1:
		data[key].value = value
	else:
		data[key].type = type
		data[key].value = value

func data_to_json():
	return to_json(data)
