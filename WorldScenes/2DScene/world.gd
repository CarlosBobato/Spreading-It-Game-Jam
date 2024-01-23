extends Node2D

@export var player: Node2D

@onready var turn_timer := $TurnTimer as Timer

var turn_counter: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("MouseLeft"):
		spawn_enemy(get_global_mouse_position())
	
	if Input.is_action_just_pressed("MouseRight"):
		spanw_minion(get_global_mouse_position())

func spawn_unit(spawn_area: Area2D, team_index: int):
	if team_index != 0:
		var unit = load("res://BaseUnit/base_unit.tscn")
		var instance = unit.instantiate()
		
		var random = RandomNumberGenerator.new()
		random.randomize()
		
		instance.position.x = spawn_area.global_position.x + random.randi_range(-7, 7)
		instance.position.y = spawn_area.global_position.y + random.randi_range(-7, 7)
		instance.team_index = team_index
		instance.turn_timer = turn_timer
		
		if team_index == 1:
			instance.get_node("Sprite2D").modulate = Color(0, 1, 0)
		elif team_index == 2:
			instance.get_node("Sprite2D").modulate = Color(0, 0, 1)
		
		add_child(instance)

func spawn_enemy(click_position):
	
	var enemy = load("res://BaseUnit/base_unit.tscn")
	var instance = enemy.instantiate()
	instance.position = click_position
	instance.team_index = 2
	instance.get_node("Sprite2D").modulate = Color(0, 0, 1)
	instance.turn_timer = turn_timer
	add_child(instance)

func spanw_minion(click_position):
	
	var minion = load("res://BaseUnit/base_unit.tscn")
	var instance = minion.instantiate()
	instance.position = click_position
	instance.team_index = 1
	instance.get_node("Sprite2D").modulate = Color(0, 1, 0)
	instance.turn_timer = turn_timer
	add_child(instance)

func reset_scene():
	if get_tree():
		get_tree().reload_current_scene()


func _on_turn_timer_timeout():
	turn_counter += 1
	print("turn tick ", turn_counter)
