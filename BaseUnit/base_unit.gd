extends CharacterBody2D

# unit team
@export var team_index = 0

# movement
@export var base_speed = 35

# battle
var chase_enemy = false
var enemy: CharacterBody2D
@onready var attack_frequency := $AttackFrequency as Timer

# health values
@export var max_health = 300
var current_health = max_health

# Detects if an enemy unit entered the zone,
# after confirmation that what entered the zone is
# actually an enemy, the unit should proceed to
# chansing it and finally battling it once they are near enough
func _on_detection_area_body_entered(body):
	
	if "team_index" in body && body.team_index != team_index:
		enemy = body
		chase_enemy = true
	pass

# Detects if a actor has left the detection zone,
# if said actor is the same enemy that entered earlier
# allows for desengagement
func _on_detection_area_body_exited(body):
	if body == enemy:
		chase_enemy = false
		enemy = null
	pass

func apply_damage():
	current_health = current_health - 1
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if chase_enemy:
		position += (enemy.position - position)/100
		
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider() is CharacterBody2D:
			if chase_enemy:
				enemy.apply_damage()
				pass
			pass
			
	pass
