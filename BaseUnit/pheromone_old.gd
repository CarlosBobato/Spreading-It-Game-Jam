extends Area2D

@export var turn_timer: Timer
@export var team_index: int

var dissipation_counter := 0 as int
@export var dissipation_turns: int

@export var source: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	turn_timer.timeout.connect(_on_turn_timer_timeout)
	pass # Replace with function body.

func _on_turn_timer_timeout():
	if dissipation_counter >= dissipation_turns:
		get_node(".").queue_free()
	else:
		dissipation_counter += 1
		get_node("CollisionShape2D").scale = Vector2((2 * dissipation_counter * 0.1), (2 * dissipation_counter * 0.1)) 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
