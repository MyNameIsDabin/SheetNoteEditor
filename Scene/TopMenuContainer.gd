extends MarginContainer

export(NodePath) var sheetnote_save_dialog
export(NodePath) var sheetnote_load_dialog

onready var menu_button = $HBoxContainer/MenuButton

enum MENU_ID { NEW_SHEETNOTE, LOAD_SHEETNOTE, SAVE_SHEETNOTE }

func _ready():
	var menu_popup = menu_button.get_popup()
	menu_popup.connect("id_pressed", self, "on_id_pressed")

func on_id_pressed(id):
	match id:
		MENU_ID.NEW_SHEETNOTE:
			get_node(sheetnote_save_dialog).popup()
		MENU_ID.LOAD_SHEETNOTE:
			get_node(sheetnote_load_dialog).popup()
		MENU_ID.SAVE_SHEETNOTE:
			pass
	
