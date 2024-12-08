extends Node


func _ready() -> void:
	Log.debug("AUTOLOAD READY: ", name)


## Change scene using preset options stored in a scene_manager_options.gd resource by its id (name).
func change_scene(scene_id: String, scene_manager_options_id: String) -> void:
	var scene_manager_options: SceneManagerOptions = Reference.get_scene_manager_options(
		scene_manager_options_id
	)
	SceneManager.change_scene(
		scene_id,
		scene_manager_options.create_fade_out_options(),
		scene_manager_options.create_fade_in_options(),
		scene_manager_options.create_general_options()
	)
