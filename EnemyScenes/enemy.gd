extends CharacterBody2D

const speed = 66

@export var player: Node2D
@onready var navigation_agent := $NavigationAgent2D as NavigationAgent2D

func _physics_process(_delta: float) -> void:
	var direction = to_local(navigation_agent.get_next_path_position()).normalized()
	velocity = direction * speed
	move_and_slide()
	
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider() is CharacterBody2D:
			player.apply_damage()
		
	pass

func make_path() -> void:
	navigation_agent.target_position = player.global_position
	pass

func _on_timer_timeout():
	make_path()
	pass
