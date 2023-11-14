extends Node2D

const path = "res://my_resource.tres"

func _init():
	save_it()
	load_it()


func save_it():
	var image = Image.load_from_file("res://icon.svg")
	var image_texture: ImageTexture = ImageTexture.create_from_image(image)
	var resource: MyResource = MyResource.new("something", image_texture)
	ResourceSaver.save(resource, path)
	

func load_it():
	var my_resource = ResourceLoader.load(path)
	if my_resource is MyResource:
		print("success: %s" % [my_resource])
	else:
		print("failure: %s" % [my_resource])
