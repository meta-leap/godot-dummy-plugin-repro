@tool
extends EditorPlugin


var gui: DummyPluginGui


func _enter_tree() -> void:
	gui = preload('gui.tscn').instantiate()
	add_control_to_bottom_panel(gui, "Dummy Plugin")


func _exit_tree() -> void:
	remove_control_from_bottom_panel(gui)
	gui.queue_free()
