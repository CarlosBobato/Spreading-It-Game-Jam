extends CharacterBody2D

# unit team
@export var team_index = 0

# movement
@export var base_speed = 35

var enemies:Array

# battle
var chase_enemy = false
var enemy: CharacterBody2D
@onready var attack_frequency := $AttackFrequency as Timer

@onready var navigation_agent := $NavigationAgent2D as NavigationAgent2D

# health values
@export var max_health = 10
var current_health = max_health

# Detects if an enemy unit entered the zone,
# after confirmation that what entered the zone is
# actually an enemy, the unit should proceed to
# chansing it and finally battling it once they are near enough
func _on_detection_area_body_entered(body):
	if body as CharacterBody2D:
		if "team_index" in body && body.team_index != team_index:
			print_debug("body entered detection area")
			enemies.push_back(body)
			if enemy == null:
				enemy = enemies[0]
				chase_enemy = true

# Detects if a actor has left the detection zone,
# if said actor is the same enemy that entered earlier
# allows for desengagement
func _on_detection_area_body_exited(body):
	
	if enemies.has(body):
		print_debug("enemy has left the area")
		enemies.erase(body)
		if body == enemy:
			if enemies.is_empty():
				enemy = null
				chase_enemy = false
			else:
				enemy = enemies.pick_random()
				chase_enemy = true

func apply_damage():
	if current_health <= 1:
		# call self destruction through the world node
		modulate = Color( 1, 0.1, 0.25, 0.5)
		print_debug("is dead")
		get_node(".").queue_free()
	else:
		current_health = current_health - 1
		print_debug(current_health)

func make_path():
	if enemy:
		navigation_agent.target_position = enemy.global_position

func _on_attack_frequency_timeout():
	if chase_enemy:
		make_path()
	
	for index in get_slide_collision_count():
			var collision = get_slide_collision(index)
			var collider = collision.get_collider()
			if collider is CharacterBody2D:
				if chase_enemy:
					if enemies.has(collider):
						print_debug("is attacking")
						collider.apply_damage()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	
	var direction = to_local(navigation_agent.get_next_path_position()).normalized()
	velocity = direction * base_speed
	# position += (enemy.position - position)/100
	move_and_slide()
	
	if enemy != null && !enemies.is_empty():
		enemy = enemies[0]
