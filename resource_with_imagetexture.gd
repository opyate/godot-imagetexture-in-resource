extends Resource
class_name MyResource

@export var image_texture: ImageTexture
@export var name: String


func _init(p_name: String = "default", p_texture: ImageTexture = null):
	name = p_name
	image_texture = p_texture
	


func _to_string():
	return "<MyResource:%s>" % [name]
