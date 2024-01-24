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

# enemies that entered the control area
var enemies: Array

# friendly units that entered the control area
var friendlies: Array

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_control_area_area_entered(area):
	print("area entered structure ", area, "team_index" in area)
	if "team_index" in area:
		if area.team_index != team_index:
			if !enemies.has(area):
				print("enemy entered structure, enemy index: ", area.team_index)
				enemies.push_back(area)
		else:
			if !friendlies.has(area):
				friendlies.push_back(area)

func _on_control_area_area_exited(area):
	print("area exited structure ", area, "team_index" in area)
	if "team_index" in area:
		if area.team_index != team_index:
			print("enemy exited structure ", area.team_index)
			if enemies.has(area):
				enemies.erase(area)
		else:
			if friendlies.has(area):
				friendlies.erase(area)

# happens every turn
func _on_turn_timer_timeout():
	if enemies.is_empty():
		if convertion_counter > 0:
			print("setting structure conversion to 0 ", self)
		convertion_counter = 0
	else:
		print("converting structure to team ", enemies.pick_random().team_index)
		if friendlies.is_empty():
			convertion_counter += 1
		else:
			print("convertion being contested ", self)
			
		if convertion_counter >= convertion_turns:
			team_index = enemies.pick_random().team_index
			modulate = enemies.pick_random().modulate
			print("converted to team ", team_index)
			convertion_counter = 0
	if spawn_counter == spawn_turns:
		world.spawn_unit(control_area, team_index)
		spawn_counter = 0
	else:
		spawn_counter += 1
		# print("spawn counter ", spawn_counter, " ", self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



