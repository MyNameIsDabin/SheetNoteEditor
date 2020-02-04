extends FileDialog

func _ready():
	pass # Replace with function body.

func _on_MusicLoadDialog_file_selected(path):
	var f = File.new()
	var buffer = PoolByteArray()
	f.open(path, File.READ)
	buffer = f.get_buffer(f.get_len())
	f.close()
	
	if buffer.size() > 0:
		SheetNoteManager.sheet_note.load_music_file(buffer, path)
