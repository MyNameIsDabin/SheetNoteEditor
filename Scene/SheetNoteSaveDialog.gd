extends FileDialog

signal add_sheet_note_file(sheet_note)

func _ready():
	pass 

func _on_SheetNoteSaveDialog_file_selected(path):
	var sheet_note = SheetNoteManager.add_sheet_note()
	var f = File.new()
	f.open(path, File.WRITE)
	var file_name = path.get_file().replace("."+path.get_extension(), "")
	sheet_note.set_property("name", file_name)
	f.store_string(sheet_note.data_to_json())
	f.close()
	
	emit_signal("add_sheet_note_file", sheet_note)
