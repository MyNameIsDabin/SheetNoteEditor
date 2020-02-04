extends Node

class_name SheetNote

var data = {
	"name" : PropertySet.new(PropertySet.Type.TEXT, ""),
	"bpm" : PropertySet.new(PropertySet.Type.FLOAT, .0),
	"music_file" : PropertySet.new(PropertySet.Type.MUSIC_FILE, ""),
}

onready var audio_stream_player = $AudioStreamPlayer

func _ready():
	pass

func load_music_file(buffer, path):
	var extension = path.get_extension()
	match extension:
		"ogg":
			load_music_ogg(buffer)
		_:
			pass
	
func load_music_ogg(buffer):
	var stream = AudioStreamOGGVorbis.new()
	stream.data = buffer
	audio_stream_player.stream = stream
	audio_stream_player.play()

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
