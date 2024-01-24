extends Area2D

@onready var unit_spawner = get_node("..")
var team_index: int

# Called when the node enters the scene tree for the first time.
func _ready():
	team_index = unit_spawner.team_index


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
