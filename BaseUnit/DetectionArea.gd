extends Area2D

@onready var BaseUnit = get_node("..")

var team_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	team_index = BaseUnit.team_index


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
