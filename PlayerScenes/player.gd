extends CharacterBody2D

# inicio movimentação do personagem

@export var MaxSpeed = 300
@export var Acceleration = 1500
@export var Friction = 1200

@onready var axis = Vector2.ZERO

# essa função é o que determina cada call to render,
# sendo delta o "timer" da engine,
# ou seja, cada frame passa por essa função
func _physics_process(delta):
	# a cada frame chama-se a função de movimentação
	move(delta)
	pass

# função que resolve a ação do usuario
func get_input_axis():
	# converte os valores boolean true (para 1) e false (para 0) para retornar direção pressionada
	axis.x = int(Input.is_action_pressed("MoveRight")) - int(Input.is_action_pressed("MoveLeft"))
	axis.y = int(Input.is_action_pressed("MoveDown")) - int(Input.is_action_pressed("MoveUp"))
	
	# retorna o vetor normalizado (por algum motivo tem que normalizar)
	return axis.normalized()	

func move(delta):
	# chama a função que resolve a ação do usuario
	axis = get_input_axis()
	
	if axis == Vector2.ZERO:
		# apply friction
		apply_friction(Friction * delta)
		
	else:
		# apply movement
		apply_movement(axis * Acceleration * delta)
		
	# aplica o movimento gerado de alguma forma
	move_and_slide()

func apply_friction(amount):
	if velocity.length() > amount:
		# caso seja maior que zero, 
		# reduz baseado no valor de fricção vezes 
		# o movimento atual do character 
		velocity -= velocity.normalized() * amount
		
	else:
		# caso a velocidade seja 0, aplica o vetor2.zero
		velocity = Vector2.ZERO
	pass # função retorna void

func apply_movement(acceleration):
	velocity += acceleration
	velocity = velocity.limit_length(MaxSpeed)
	pass # função retorna void

# fim da movimentação do personagem

func apply_damage():
	
	modulate = Color( 1, 0.1, 0.2)
	
	pass #do something
