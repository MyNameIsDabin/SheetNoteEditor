extends PropertyPanel

class_name FilePanel

var items = ["불러오기"]
onready var menu_button = $MenuButton
onready var menu_popup = menu_button.get_popup()

func _ready():
	init_items()
	
func init_items():
	for i in range(items.size()):
		menu_popup.add_item(items[i], i)

func set_value(property: PropertySet):
	pass
