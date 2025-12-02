extends Node2D
class_name ElementHighlighter

var _parent_node: Node2D
var _shader_material: ShaderMaterial

func _ready() -> void:
	_parent_node = get_parent()
	if _parent_node == null:
		push_error("HealthComponent must be a child of another node!")
		return
		
	var shader = load("res://components/element_highlighter/element_highlighter.gdshader")
	_shader_material = ShaderMaterial.new()
	_shader_material.shader = shader
	
func _input(event: InputEvent) -> void:
	if _parent_node is Sprite2D or _parent_node is AnimatedSprite2D:
		if event.is_action_pressed("highlight"):
			_parent_node.material = _shader_material
		elif event.is_action_released("highlight"):
			_parent_node.material = null
		
	
