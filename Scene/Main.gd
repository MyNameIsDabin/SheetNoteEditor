extends Control

export(NodePath) var node_path_property = null
onready var sheet_note_property = get_node(node_path_property)
onready var music_load_dialog = $MusicLoadDialog

enum MusicFileMenuId { FILE_LOAD }

func _ready():
	pass
	
func set_sheet_note(sheet_note: SheetNote):
	for key in sheet_note.data:
		sheet_note_property.add_property(key, sheet_note.data[key])

func _on_SheetNoteSaveDialog_add_sheet_note_file(sheet_note):
	set_sheet_note(sheet_note)

func _on_MusicFilePanel_id_pressed(id):
	match id:
		MusicFileMenuId.FILE_LOAD:
			music_load_dialog.popup()
