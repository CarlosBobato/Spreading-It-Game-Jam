extends Node2D

@export var player: Node2D

@onready var path_timer := $PathTimer as Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("MouseLeft"):
		spawn_enemy(get_global_mouse_position())
		pass
	
	if Input.is_action_just_pressed("MouseRight"):
		spanw_minion(get_global_mouse_position())
		pass

func spawn_enemy(click_position):
	
	var enemy = load("res://BaseUnit/base_unit.tscn")
	var instance = enemy.instantiate()
	instance.position = click_position
	instance.team_index = 2
	#instance.path_timer = path_timer
	add_child(instance)
	
	pass

func spanw_minion(click_position):
	
	var minion = load("res://BaseUnit/base_unit.tscn")
	var instance = minion.instantiate()
	instance.position = click_position
	instance.team_index = 1
	# instance.path_timer = path_timer
	add_child(instance)
	
	pass

func reset_scene():
	if get_tree():
		get_tree().reload_current_scene()
	pass
