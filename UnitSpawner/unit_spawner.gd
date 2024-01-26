extends StaticBody2D

# reference to control area
@onready var control_area := $ControlArea as Area2D

# turns to spawn a unit
@export var spawn_turns := 3 as int
var spawn_counter = 0

# turns to convert to another team
@export var convertion_turns := 4 as int
var convertion_counter = 0

# index of the currently belonging team
@export var team_index: int

# the turn timer of the map
@export var turn_timer: Timer

# level in which the spawner is placed
@export var world: Node2D

@onready var spawn_label := $SpawnLabel as Label

# enemies that entered the control area
var enemies: Array

# friendly units that entered the control area
var friendlies: Array

# Called when the node enters the scene tree for the first time.
func _ready():
	# turn_timer.timeout.connect(_on_turn_timer_timeout)
	if team_index == 1:
		modulate = Color(0, 1, 0)
	elif team_index == 2:
		modulate = Color(0, 0, 1)
	elif team_index == 3:
		modulate = Color(1, 0, 0)
	else:
		modulate = Color(0.5, 0.5, 0.5)
	
	spawn_counter = 0
	spawn_label.text = str(spawn_counter)

func _on_control_area_area_entered(area):
	if "team_index" in area:
		if area.team_index != team_index:
			if !enemies.has(area):
				enemies.push_back(area)
				area.BaseUnit.spawn_pheromone_area()
		else:
			if !friendlies.has(area):
				friendlies.push_back(area)

func _on_control_area_area_exited(area):
	if "team_index" in area:
		if area.team_index != team_index:
			if enemies.has(area):
				enemies.erase(area)
				area.BaseUnit.spawn_pheromone_area()
		else:
			if friendlies.has(area):
				friendlies.erase(area)

# happens every turn
func _on_turn_timer_timeout():
	if enemies.is_empty():
		convertion_counter = 0
	else:
		if friendlies.is_empty():
			convertion_counter += 1
			
		if convertion_counter >= convertion_turns:
			team_index = enemies.pick_random().team_index
			modulate = enemies.pick_random().modulate
			convertion_counter = 0
	if spawn_counter == spawn_turns:
		world.spawn_unit(control_area, team_index)
		world.spawn_unit(control_area, team_index)
		world.spawn_unit(control_area, team_index)
		spawn_counter = 0
		spawn_label.text = str(spawn_counter)
	else:
		spawn_counter += 1
		spawn_label.text = str(spawn_counter)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



