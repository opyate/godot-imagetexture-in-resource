extends Node2D

const path = "res://my_resource.res"

func _ready():
	save_it()
	load_it()
	get_tree().quit()


func save_it():
	var image = Image.load_from_file("res://icon.svg")
	var image_texture: ImageTexture = ImageTexture.create_from_image(image)
	var resource = MyResource.new("something", image_texture)
	assert(ResourceSaver.save(resource, path) == OK)
	

func load_it():
	var my_resource = ResourceLoader.load(path)
	if my_resource is MyResource:
		print("success: %s" % [my_resource])
	else:
		print("failure: %s" % [my_resource])
