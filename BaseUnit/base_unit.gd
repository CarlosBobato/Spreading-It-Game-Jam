extends CharacterBody2D

@export var turn_timer: Timer

# unit team
@export var team_index = 0

# movement
@export var base_speed = 55

var pheromones:Array
var chase_pheromone:= false as bool
var pheromone: StaticBody2D

var enemies:Array

# battle
var chase_enemy = false
var enemy: CharacterBody2D
@onready var attack_frequency := $AttackFrequency as Timer

@onready var navigation_agent := $NavigationAgent2D as NavigationAgent2D

@onready var health_counter := $Label as Label

# health values
@export var max_health = 100
var current_health = max_health

# Detects if an enemy unit entered the zone,
# after confirmation that what entered the zone is
# actually an enemy, the unit should proceed to
# chansing it and finally battling it once they are near enough
func _on_detection_area_body_entered(body):
	if body as CharacterBody2D:
		if "team_index" in body && body.team_index != team_index:
			enemies.push_back(body)
			if enemy == null:
				enemy = enemies[0]
				chase_enemy = true
	elif body as StaticBody2D: 
		if "team_index" in body:
			if "source" in body && body.source != self:
				if  body.team_index != team_index:
					pheromone = body
					chase_pheromone = true
				else:
					pheromones.push_back(body)
					if pheromone == null && !pheromones.is_empty():
						pheromone = pheromones[0]
						chase_pheromone = true
					else:
						chase_pheromone = false
						pheromone = null
			elif "unit_spawner" in body:
				if body.team_index != team_index:
					pheromone = body
					chase_pheromone = true
					
	# call_deferred("spawn_pheromone_area")

# Detects if a actor has left the detection zone,
# if said actor is the same enemy that entered earlier
# allows for desengagement
func _on_detection_area_body_exited(body):
	if enemies.has(body):
		enemies.erase(body)
		if body == enemy:
			if enemies.is_empty():
				enemy = null
				chase_enemy = false
			else:
				enemy = enemies.pick_random()
				chase_enemy = true
	elif pheromones.has(body):
		pheromones.erase(body)
		if body == pheromone:
			if pheromones.is_empty():
				pheromone = null
				chase_pheromone = false
			else:
				pheromone = pheromones[0]
				chase_pheromone = true

func apply_damage():
	if current_health < 1:
		# call self destruction through the world node
		modulate = Color( 1, 0.1, 0.25, 0.5)
		queue_free()
	else:
		current_health = current_health - 1
		health_counter.text = str(current_health)


func make_path():
	if chase_enemy && enemy:
		navigation_agent.target_position = enemy.global_position
	elif chase_pheromone && pheromone:
		var random = RandomNumberGenerator.new()
		random.randomize()
		var target_position = Vector2(pheromone.position.x + random.randi_range(-7, 7), pheromone.position.y +  random.randi_range(-7, 7))
		navigation_agent.target_position = target_position
		
	else:
		var random = RandomNumberGenerator.new()
		random.randomize()
		navigation_agent.target_position = Vector2(global_position.x + random.randi_range(-170, 170), global_position.y + random.randi_range(-170, 170))

func _on_attack_frequency_timeout():
	if chase_enemy:
		make_path()
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		var collider = collision.get_collider()
		if collider is CharacterBody2D:
			if chase_enemy:
				if enemies.has(collider):
					collider.apply_damage()
		elif collider is TileMap:
			apply_damage()

# Called when the node enters the scene tree for the first time.
func _ready():
	turn_timer.timeout.connect(_on_turn_timer_timeout)
	current_health = max_health
	health_counter.text = str(current_health)
	if team_index == 1:
		modulate = Color(0, 1, 0)
	elif team_index == 2:
		modulate = Color(0, 0, 1)
	elif team_index == 3:
		modulate = Color(1, 0, 0)
	else:
		modulate = Color(0.5, 0.5, 0.5)

func spawn_pheromone_area():
	var random = RandomNumberGenerator.new()
	random.randomize()
	var pheromone_trail = load("res://BaseUnit/pheromone.tscn")
	var pheronome_instance = pheromone_trail.instantiate()
	
	pheronome_instance.position = global_position
	pheronome_instance.turn_timer = turn_timer
	pheronome_instance.team_index = team_index
	pheronome_instance.dissipation_turns = 3
	pheronome_instance.source = self
	
	# instanciates unit on map
	get_tree().current_scene.add_child(pheronome_instance)

func _on_turn_timer_timeout():
	if !chase_enemy:
		make_path()
	spawn_pheromone_area()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	
	var direction = to_local(navigation_agent.get_next_path_position()).normalized()
	velocity = direction * base_speed
	
	move_and_slide()
	
	if enemy == null && !enemies.is_empty():
		enemy = enemies[0]
		
	if str(pheromone) == "<Freed Object>":
		if pheromones.is_empty():
			pheromone = null
			chase_pheromone = false
		else:
			pheromone = pheromones.pick_random()
			chase_pheromone = true





