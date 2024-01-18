extends Node2D

@export var player: Node2D

@onready var turn_timer := $TurnTimer as Timer

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

func spawn_unit(spawn_area: Area2D, team_index: int):
	var unit = load("res://BaseUnit/base_unit.tscn")
	var instance = unit.instantiate()
	
	var random = RandomNumberGenerator.new()
	random.randomize()
	
	instance.position.x = spawn_area.global_position.x + random.randi_range(-7, 7)
	instance.position.y = spawn_area.global_position.y + random.randi_range(-7, 7)
	instance.team_index = team_index
	
	if team_index == 1:
		instance.get_node("Sprite2D").modulate = Color(0, 0, 1)
	elif team_index == 2:
		instance.get_node("Sprite2D").modulate = Color(0, 1, 0)
	
	add_child(instance)
	
	pass

func spawn_enemy(click_position):
	
	var enemy = load("res://BaseUnit/base_unit.tscn")
	var instance = enemy.instantiate()
	instance.position = click_position
	instance.team_index = 2
	instance.get_node("Sprite2D").modulate = Color(0, 1, 0)
	# instance.path_timer = path_timer
	add_child(instance)
	
	pass

func spanw_minion(click_position):
	
	var minion = load("res://BaseUnit/base_unit.tscn")
	var instance = minion.instantiate()
	instance.position = click_position
	instance.team_index = 1
	instance.get_node("Sprite2D").modulate = Color(0, 0, 1)
	# instance.path_timer = path_timer
	add_child(instance)
	
	pass

func reset_scene():
	if get_tree():
		get_tree().reload_current_scene()
	pass
