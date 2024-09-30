class_name DummyPluginGui extends CenterContainer


func _ready() -> void:
	print("GUI _ready")
	$Button.connect('pressed', _on_button_pressed_alt)


func _enter_tree() -> void:
	print("GUI _enter_tree")


func _on_button_pressed() -> void: # this one's connected in `gui.tscn`
	print("Hello 1")
	EditorInterface.popup_node_selector(func(node_path: String): pass )


func _on_button_pressed_alt() -> void: # this one's connected in `_ready`
	print("Hello 2")
	EditorInterface.popup_node_selector(func(node_path: String): pass )
