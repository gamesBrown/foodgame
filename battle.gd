extends Control
var testing = true;

class combat:
	var backgrounds = {1:"res://Art/novelai_anime_forest_4k_wallpaper_by_darkprncsai_dfgmsko-fullview.jpg",2:"res://Art/Hp_bar.png",3:null}
#Loads the background image using Resource Loader.
func load_background(resource_path):

	$Location/BackgroundImage.texture = ResourceLoader.load(resource_path)
	
func test_bg_null(test_bg):
	print("Test background is " + test_bg)
	print("The current resource loaded is: " + $Location/BackgroundImage.texture.resource_path)
	if $Location/BackgroundImage.texture.resource_path == test_bg:
		print("Test BG Successfully loaded.")
	else:
		print("Test BG Failed to load.")
	return false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#creates a combat controller class
	var combat_controller = combat.new()
	#uses loadbackground function using an array from combat controller class
	load_background(combat_controller.backgrounds[1])

	print($Location/BackgroundImage.texture.resource_path)
	#hard coded test for now, but can change in the future - runs a test to see if the resource loaded is equal to the test resource.
	if testing:
		test_bg_null("res://Art/novelai_anime_forest_4k_wallpaper_by_darkprncsai_dfgmsko-fullview.jpg")
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
