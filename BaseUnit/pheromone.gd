extends StaticBody2D

@export var turn_timer: Timer
@export var team_index: int

var dissipation_counter := 0 as int
@export var dissipation_turns: int

@export var source: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var random = RandomNumberGenerator.new()
	random.randomize()
	
	turn_timer.timeout.connect(_on_turn_timer_timeout)
	
	if team_index == 1:
		modulate = Color(randf_range(0.0, 1.0), 1, randf_range(0.0, 1.0), 0.5)
	elif team_index == 2:
		modulate = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), 1, 0.5)
	elif team_index == 3:
		modulate = Color(1, randf_range(0.0, 1.0), randf_range(0.0, 1.0), 0.5)
	else:
		modulate = Color(randf_range(0.0, 0.5), randf_range(0.0, 0.5), randf_range(0.0, 0.5), 0.5)
	

func _on_turn_timer_timeout():
	if dissipation_counter >= dissipation_turns:
		get_node(".").queue_free()
	else:
		dissipation_counter += 1
		get_node("CollisionShape2D").scale = Vector2((2 * dissipation_counter * 0.1), (2 * dissipation_counter * 0.1)) 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
