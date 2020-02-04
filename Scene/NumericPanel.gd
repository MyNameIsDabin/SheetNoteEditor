extends PropertyPanel

class_name NumericPanel

func _ready():
	pass

func set_value(property: PropertySet):
	$SpinBox.value = property.value
