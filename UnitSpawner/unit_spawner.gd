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

func _on_control_area_body_entered(body):
	if "team_index" in body:
		if body.team_index != team_index:
			print_debug("enemy entered control area")
			enemies.push_back(body)
		else:
			print_debug("friendly entered control area")
			friendlies.push_back(body)

func _on_control_area_body_exited(body):
	if "team_index" in body:
		if body.team_index != team_index:
			print_debug("enemy exited control area")
			enemies.erase(body)
		else:
			print_debug("friendly exited control area")
			friendlies.erase(body)

# happens every turn
func _on_turn_timer_timeout():
	
	print_debug("turn ended")
	
	print_debug("spawn counter", spawn_counter)
	
	print_debug("convertion counter", convertion_counter)
	
	if enemies.is_empty():
		convertion_counter = 0
	else:
		if friendlies.is_empty():
			convertion_counter += 1;
			
	if spawn_counter == spawn_turns:
		print_debug("spawning unit")
		world.spawn_unit(control_area, team_index)
		spawn_counter = 0
	else:
		spawn_counter += 1;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



