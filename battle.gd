extends Control
#needed for if testing mode is on or not and tests will run
var testing = false



class combat:
	var backgrounds = {"forest_1":"res://Art/novelai_anime_forest_4k_wallpaper_by_darkprncsai_dfgmsko-fullview.jpg",2:"res://Art/Hp_bar.png",3:null}
	var enemies = {"Samurai":"res://Art/Enemy_hurt.png"}
	func generate_encounter():
		pass
	func load_enemies(node_ref):
		
		var enemy_list = [1,2,3]
		for enemy in enemy_list:
			print(enemy)
			enemy = load("res://enemy.tscn").instantiate()
			
			print(enemy)
			
			print(enemy)
			print(node_ref)
			node_ref.add_child(enemy)
		
	func load_party():
		pass
			

#Loads the background image using Resource Loader.
func load_background(resource_path):

	$Location/BattleBackgroundImage.texture = ResourceLoader.load(resource_path)
	


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#creates a combat controller class
	var combat_controller = combat.new()
	#uses loadbackground function using an array from combat controller class
	
	#when combat starts, load enemies, load party, start comabt
	load_background(combat_controller.backgrounds["forest_1"])
	combat_controller.load_enemies($EnemyDisplayContainer)
	combat_controller.load_party()
	
	#runs tests if you have test mode activated
	if testing:
		var battle_test = $test.battle_tests.new()
		var test_bg = "res://Art/novelai_anime_forest_4k_wallpaper_by_darkprncsai_dfgmsko-fullview.jpg"
		var current_bg_path = $Location/BackgroundImage
		#currently runs the verify test bg
		battle_test.run_battle_tests(test_bg,current_bg_path)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
