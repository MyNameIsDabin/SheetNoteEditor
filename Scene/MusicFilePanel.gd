extends FilePanel

func _ready():
	menu_popup.connect("id_pressed", get_tree().current_scene, "_on_MusicFilePanel_id_pressed")
