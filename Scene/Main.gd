extends Control

export(NodePath) var node_path_property = null
onready var sheet_note_property = get_node(node_path_property)

func _ready():
	pass
	
func set_sheet_note(sheet_note: SheetNote):
	for key in sheet_note.data:
		sheet_note_property.add_property(key, sheet_note.data[key])

func _on_SheetNoteSaveDialog_add_sheet_note_file(sheet_note):
	set_sheet_note(sheet_note)
