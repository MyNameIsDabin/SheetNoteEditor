extends PropertyPanel

class_name LineEditPanel

func _ready():
	pass

func set_value(property: PropertySet):
	$LineEdit.text = str(property.value)
