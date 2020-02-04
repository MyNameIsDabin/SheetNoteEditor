extends Node

var sheet_note = {}
var sheet_note_list = []

func _ready():
	pass

func add_sheet_note():
	var new_sheet_note = load("res://Scene/SheetNote.tscn").instance()
	sheet_note = new_sheet_note
	sheet_note_list.push_back(new_sheet_note)
	add_child(new_sheet_note)
	return new_sheet_note
