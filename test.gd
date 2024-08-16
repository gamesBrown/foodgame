extends Node


class battle_tests:
	func run_battle_tests(test_bg,node_ref):
		print("Running test to verify if the correct background loads...")
		test_bg_verify(test_bg,node_ref)
	
	
	#This test works by testing a hard coded reference to a background image, 
	#while checking it against the current background image.
	#The variables are passed in through run_combat_tests and declared before it.
	func test_bg_verify(test_bg,node_ref):
		print("Test background is " + test_bg)
		print("The current resource loaded is: " + node_ref.texture.resource_path)
		if node_ref.texture.resource_path == test_bg:
			print("Test BG Successfully loaded.")
		else:
			print("Test BG Failed to load.")
			
			
