GDPC                                                                                      /   T   res://.godot/exported/133200997/export-056bb5ae0f7b9d2a42a1c815c1574e65-test_map.scn �      �      �He
t��x�1�#T�.    X   res://.godot/exported/133200997/export-0f9d47b2fa86451156e9511775644110-pheromone.scn   p"      �      �	��H�LV�@�a#�    X   res://.godot/exported/133200997/export-2343c8bf4a1babfe52de3661751e4657-base_unit.scn         8	      pPA�=�(`&vն�M    X   res://.godot/exported/133200997/export-3aa139ddf4d22fb32e6925d809416f43-unit_spawner.scn��      �      �D�Y�rkK��	y4��    T   res://.godot/exported/133200997/export-433f4fd5bbad5b4343a85011997acbe4-player.scn  `F      �      �3#.�n��˳�e�    T   res://.godot/exported/133200997/export-66964c21fcb3fa99499def0b21312cc7-world.scn   �      
      n#�����Z3ԈZn    X   res://.godot/exported/133200997/export-72731cb8d21b345a7ffbbc0572658736-debug_map.scn   ��      D3      K����c�Kҝ�kjc    T   res://.godot/exported/133200997/export-7e3fe48faa8561ab125684ef8d8ade53-minion.scn   8      n      ����ը���Xv{G    \   res://.godot/exported/133200997/export-8212a442287ed43c64ee9d927dbd50ae-pheromone_old.scn   �)      �      ��3'du��I�n��    T   res://.godot/exported/133200997/export-a4589d173f7ecc27b380d525f3c5a005-enemy.scn    0            \�آ�!��Z|h`�9    ,   res://.godot/global_script_class_cache.cfg  P            ��Р�8���8~$}P�    L   res://.godot/imported/BlockingTile.png-9dfc9ea2fc8519400336a38810001972.ctex0K      |       0W�v��<�s    L   res://.godot/imported/Pheromone.png-020eb48495453d092a38a06e97fe946b.ctex   �L      F      �.rW�"y{UO��Z�    L   res://.godot/imported/Tier1Unit.png-2296a97d95e1cca3203c8a0331ef9af7.ctex   �`      �      ���z@�Kѱ�ț&    L   res://.godot/imported/Tier2Unit.png-d1d05a3039ecbc36e700928a31347939.ctex   @p      t       �Ȕ��y�ѕ��p��    L   res://.godot/imported/UnitSpawner.png-5218d667ea726aa33a2e3bf34e016bf5.ctex �q      N      ��ef�x�\���E�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexP�      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  0     �      Z
�E0fYrć�
i4\        res://BaseUnit/DetectionArea.gd P      )      ,�&�8�pq��$E�3��       res://BaseUnit/base_unit.gd               Ѧ�;i�����l��    $   res://BaseUnit/base_unit.tscn.remap ��      f       �n�;6eG�UCY	��       res://BaseUnit/pheromone.gd �      �      ����6��b�h8��    $   res://BaseUnit/pheromone.tscn.remap `�      f       ��/�^���	C���;        res://BaseUnit/pheromone_old.gd  '      �      �nU3�@Es��c[�    (   res://BaseUnit/pheromone_old.tscn.remap ��      j       ��-�&��>h0��       res://EnemyScenes/enemy.gd  P-      �      F����/ SA�F�5�    $   res://EnemyScenes/enemy.tscn.remap  @�      b       ���$:A,Hfco'���       res://MinionScenes/minion.gd 5      �      !]	v�:�}Ǡ���p    $   res://MinionScenes/minion.tscn.remap��      c       �/|!15#��-�1��@       res://PlayerScenes/player.gdp=      �      ��[&�#�r\��y	U?    $   res://PlayerScenes/player.tscn.remap �      c       ��;Fu�P�( Ixb[    <   res://Resources/TileMaps/Blocking/BlockingTile.png.import   �K      �       d��y�N�v����Y��    $   res://Textures/Pheromone.png.import �_      �       1�!�����Q��Dwa    $   res://Textures/Tier1Unit.png.import po      �       (?�E�@i�����K    $   res://Textures/Tier2Unit.png.import �p      �       bMޖ앺�dlr ��    (   res://Textures/UnitSpawner.png.import   ��      �       ������C-p,M])    $   res://TileMaps/debug_map.tscn.remap ��      f       M&rt)m#,0�>6    $   res://TileMaps/test_map.tscn.remap         e       3@�X��c�7        res://UnitSpawner/ControlArea.gd��      1      !�%��� �i���0;N    $   res://UnitSpawner/unit_spawner.gd   ��      
	      �!�L�/
7�٩�k��    ,   res://UnitSpawner/unit_spawner.tscn.remap   p      i       .!p��oUk0�97X���    $   res://WorldScenes/2DScene/world.gd  ��      2      u.�6���N|ŷX+    ,   res://WorldScenes/2DScene/world.tscn.remap  �      b       �0��#g��*{1y`    (   res://WorldScenes/2DScene/world_old.gd   �      &      x�ʶI�$>���=[���       res://icon.svg  p     �      C��=U���^Qu��U3       res://icon.svg.import   0�      �       �L��GT(����Ą}�       res://project.binary�     �      o��;��`�j�Ԓkd�E            extends CharacterBody2D

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





 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://BaseUnit/base_unit.gd ��������
   Texture2D    res://Textures/Tier1Unit.png �|Ś�O�&   Script     res://BaseUnit/DetectionArea.gd ��������      local://CircleShape2D_5rl40 �         local://CircleShape2D_04ce5          local://PackedScene_oth43 G         CircleShape2D          ��#B         CircleShape2D          4�zB         PackedScene          	         names "   '   	   BaseUnit    scale    collision_layer    collision_mask    motion_mode    wall_min_slide_angle    script    CharacterBody2D    Label    offset_left    offset_top    offset_right    offset_bottom    text    horizontal_alignment    vertical_alignment 	   Sprite2D    texture    NavigationAgent2D    path_postprocessing    avoidance_enabled    DetectionArea    Area2D    CollisionShape2D 	   modulate    show_behind_parent    shape    AttackFrequency 
   wait_time 
   autostart    Timer &   _on_detection_area_area_shape_entered    area_shape_entered     _on_detection_area_body_entered    body_entered    _on_detection_area_body_exited    body_exited    _on_attack_frequency_timeout    timeout    	   variants       
   ��L=��L=                                        ��     ��     ��     ��
     pA  pA      0                                          �?  �?  �?��@=
   �5B�5B                        �>      node_count             nodes     n   ��������       ����                                                          ����   	      
               	      
                                       ����                           ����                                 ����                                      ����                                             ����                           ����                         conn_count             conns                                        "   !                     $   #                     &   %                    node_paths              editable_instances              version             RSRC        extends Area2D

@onready var BaseUnit = get_node("..")

var team_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	team_index = BaseUnit.team_index


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
       extends StaticBody2D

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
		modulate = Color(randf_range(0.0, 1.0), 1, randf_range(0.0, 1.0), 0.1)
	elif team_index == 2:
		modulate = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), 1, 0.1)
	elif team_index == 3:
		modulate = Color(1, randf_range(0.0, 1.0), randf_range(0.0, 1.0), 0.1)
	else:
		modulate = Color(randf_range(0.0, 0.5), randf_range(0.0, 0.5), randf_range(0.0, 0.5), 0.1)
	

func _on_turn_timer_timeout():
	if dissipation_counter >= dissipation_turns:
		queue_free()
	else:
		var random = RandomNumberGenerator.new()
		random.randomize()
		dissipation_counter += 1
		scale = Vector2((randi_range(-1, 1) * dissipation_counter * 7), (randi_range(-1, 1) * dissipation_counter * 7))
		rotation = (randf_range(-2, 2) * dissipation_counter * 0.01)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://BaseUnit/pheromone.gd ��������
   Texture2D    res://Textures/Tier1Unit.png �|Ś�O�&      local://CircleShape2D_rt006 �         local://PackedScene_ihrj1 �         CircleShape2D            �A         PackedScene          	         names "      
   pheromone    collision_layer    collision_mask    script    StaticBody2D 	   Sprite2D 	   position    scale    texture    CollisionShape2D    show_behind_parent    shape    	   variants    	                         
   ��������
   �7�<���<               
   ���=���=                node_count             nodes     '   ��������       ����                                        ����                                 	   	   ����   
                            conn_count              conns               node_paths              editable_instances              version             RSRC            extends Area2D

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
       RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script     res://BaseUnit/pheromone_old.gd ��������      local://CircleShape2D_c7wct a         local://PackedScene_acyc2 �         CircleShape2D          �a�B         PackedScene          	         names "         pheromone_old    script    Area2D    CollisionShape2D    scale    shape 	   disabled    	   variants                 
   ���=���=                      node_count             nodes        ��������       ����                            ����                               conn_count              conns               node_paths              editable_instances              version             RSRCextends CharacterBody2D

const speed = 66

@export var player: Node2D
@export var path_timer: Timer
@onready var navigation_agent := $NavigationAgent2D as NavigationAgent2D

func _physics_process(_delta):
	var direction = to_local(navigation_agent.get_next_path_position()).normalized()
	velocity = direction * speed
	move_and_slide()
	
	if path_timer.timeout:
		make_path()
	
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider() is CharacterBody2D:
			if player == collision.get_collider():
				player.apply_damage()

func make_path():
	if player:
		navigation_agent.target_position = player.global_position
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://EnemyScenes/enemy.gd ��������
   Texture2D    res://icon.svg �}��C�      local://CircleShape2D_bc7ta �         local://PackedScene_i5cr0 �         CircleShape2D          o��A         PackedScene          	         names "         enemy    collision_layer    collision_mask    motion_mode    wall_min_slide_angle    script    CharacterBody2D 	   Sprite2D 	   modulate 	   position    scale    texture    CollisionShape2D    shape    NavigationAgent2D    avoidance_enabled    debug_enabled    	   variants                                             ��`?    �� =  �?
         ��
     �>  �>                               node_count             nodes     4   ��������       ����                                                    ����         	      
                              ����      	                     ����      
      
             conn_count              conns               node_paths              editable_instances              version             RSRC   extends CharacterBody2D

const speed = 66

@export var player: Node2D
@export var path_timer: Timer

@onready var navigation_agent := $NavigationAgent2D as NavigationAgent2D

@onready var interaction_shape := $InteractionShape as CollisionObject2D

func _physics_process(delta):
	var direction = to_local(navigation_agent.get_next_path_position()).normalized()
	velocity = direction * speed
	move_and_slide()
	
	if path_timer.timeout:
		make_path()
	
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider() is CharacterBody2D:
			if player:
				player.apply_damage()
		
	pass

func make_path():
	if player:
		navigation_agent.target_position = player.global_position
	pass
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://EnemyScenes/enemy.gd ��������
   Texture2D    res://icon.svg �}��C�      local://CircleShape2D_bc7ta �         local://CircleShape2D_476dx �         local://PackedScene_loce5          CircleShape2D          o��A         CircleShape2D          w0C         PackedScene          	         names "         minion    collision_layer    collision_mask    motion_mode    wall_min_slide_angle    script    CharacterBody2D 	   Sprite2D 	   position    scale    texture    CollisionShape2D    shape    NavigationAgent2D    debug_enabled    InteractionShape    	   variants                                          
         ��
     �>  �>                                        node_count             nodes     9   ��������       ����                                                    ����         	      
                        ����                           ����      	                     ����      
             conn_count              conns               node_paths              editable_instances              version             RSRC  extends CharacterBody2D

# inicio movimentação do personagem

@export var MaxSpeed = 300
@export var Acceleration = 1500
@export var Friction = 1200

@export var current_map: Node2D

@onready var axis = Vector2.ZERO

@onready var DamageTimer = $DamageTimer

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

@export var max_health = 7

@export var current_health = max_health

func apply_damage():
	
	modulate = Color( 1, 0.1, 0.2)
	
	if current_health == 0:
		current_map.reset_scene()
		pass # death condition, resets the scene
		
	else:
		current_health -= 1
		
	if DamageTimer:
		DamageTimer.start()
	pass #do something

func is_alive():
	if current_health == 0:
		return false
	else:
		return true

func _on_damage_timer_timeout():
	
	modulate = Color(1, 1, 1)
	
	pass # Replace with function body.
         RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://PlayerScenes/player.gd ��������
   Texture2D    res://icon.svg �}��C�      local://CircleShape2D_33m55 �         local://PackedScene_4m34k �         CircleShape2D          ��B         PackedScene          	         names "         Player    collision_layer    collision_mask    script    CharacterBody2D 	   Sprite2D    texture    CollisionShape2D    shape    DamageTimer 
   wait_time 	   one_shot 
   autostart    Timer    _on_damage_timer_timeout    timeout    	   variants                                                )   �������?            node_count             nodes     ,   ��������       ����                                        ����                           ����                        	   ����   
                            conn_count             conns                                      node_paths              editable_instances              version             RSRC   GST2   �   @      ����               � @        D   RIFF<   WEBPVP8L/   /�  Hq.�-Hq.�-Hq.�=���$mmy_t	�� ���     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cchqv5entt6ne"
path="res://.godot/imported/BlockingTile.png-9dfc9ea2fc8519400336a38810001972.ctex"
metadata={
"vram_texture": false
}
        GST2     �      ����               �          RIFF  WEBPVP8L�  /�/��m��Ͷ�gq��U��ى����x��\fJ�03��=�%�Q==��1�h�F?��u�m۶m۶m�lͶm�|���� H�$�ɞk��O��B5W�&IR<�D�D��̺��5����_ |�y���q���#IIR��PC�Rr(�	emN�A����[�Sv��b[Rr��P䆹E�8g63���a��s�	�l4 @?�&ɵ$5��<)��e~�h �Z���R�)/}���@v�ے�p{��M���=�R�}����J ��T�5j*Y)��	�d{n6{lp��� �+KڦF*_�EQ|=� �u�W��+|'��n"Z�e���}�\�}oLPDnʀA�<v��XZ�� yľ���	��W����eI�AJ�(ɦ��'�)2�ˀ/�۴� �$�?����=?��)�:㧖��ۙ���{z�� �@R��k<�P� �qo d��Ę� �V��|u͗B�#%2�l��� ���z�gf�~����Iu}���l����| X₿�� �'_͢��%2�l"��_ ��-�{((C6C~�8�$�F;;#C'��8����^�N�Ұ�$�o x����F����<����]���L9���HӨ��Z'R3�z"7�!L��}፠dyf
ȳ2�%�����r��s/��f����JPƜ�F���WS��`����s�<�G�g�=��Ɉ��yi�C�""CJd,Y�Ӹ��#������[/��i �đ�vL*����]|�iV;h�g�1*�@��/S�\5s�eJg����B-��%�{(�Pv��)k���c�n<̐����g���{ G�\u®�&�h��e��+�d�����"�N&��&M�Y|`��~T5���F���|`��F��#�4�	�JV� �}fLP�l >fL3���bL1	�����=��S�$eI�&�`XPy���k�an�i��I�<�A6�3�IUK͖���mW�	j�M�_�H���T�,��o���8�H��Ζ�˿�-^	j#��wI�:�L��|6*�C ��L[�<�dvFC�+����}�J�)���;pIP+���A������&p^P3�|�H�4S�6ठn��,U���2%�ی��(�ZLEQ�V��a�����R��
?Iq��d���SPCN�L����E�$��'�#_ت�H��݂Z2l
���]1D����L=	���EZ��2�#AM��W��p��#6�ʿ`OZQ��~W[������%�|q�V ���@��*_ܶ=VcQ�R��W1R��QA�e�:R�����?������z���5�#�1�}�Z��d�;%_�����Mp����v�
=��p�'�Ԝ�<�/4W�z�u'�|黎��BUz5��d�Ԟ �M��DJal��.A�e5�M{�8����H���&_�>�w�써�f��LW��p>�NA�G���Qe>�%��jQp���K�*���G/����i�T�yK5��)�8#LKY���|�c�Rp�)�����=����`H�����͕���}�)��4�[Yڶ�ʍb�=f
j4_ˀ��9l�Z��x[ԩ�&��:j�Rs16�8�V|��5I��>P��!
|�ƖS�Wʎ�jVp�C�ˈ4ִҾ�b8ވ�|j@a�؉�R:Z��0OP�y`��"7ns�/!��:5,x���#��<WJy��8(�����vg�H�#�4)+��O8����� ��ղ�t�H#�\���Ɂ+��ΰ�� �������W>�an�=A}g�'�� �y�����F��8��<������Ud`���-\�G薲t6u6��`R)cc�A��O��J�O��e��_q�̦nq?e��G�bwྠ	2�w���2Sa��-o�r�l�	%i�R$�^	$/��3W�s�V+�Ն�]�֭�F$�P�K49^�Ly�W��⤝�  ���IS䚤�8�F�?�d�6 |��L`[�
{��0E�xy�5 �?uUے��.�4A�;� q�m_Qr5fjD���� �"H]��c��!�� 9T��_b���7��/��IRQ�y�
~���8�4��pfhN�u�#M�R�\�j�;���(��5�A�i#E��5�`�ZQ�P��&5�%
A1�	<Ф��YT6~Ѥ�w�G������q�;�*�+����Q��e����SW4� �Z?��pF���)!�?اQs�_�bxk5�� ��a�f���BΕp�a�j��bfO�$Ɏ���a���/�4]��Q� ��������ר� �\�%R�3��֬���\��J7�`���H㋉-�m�Xr�}^��a�&�d�\es�0͇���~��ݏ]�bc>V�/h\�����5�-FpCP�F�k=�D���1�(���H��Y
��u���-�?���4���5]����=��k�ܣ��nί��q�W@檠������U�)7+/s� hj�d�q�&˭�'�ZO��&��:�,ۖ�B�6*hn����.V��{`�=A�g�&���S�y��7A��r�ԁ/��yX�f� 9�����8lD��>��}9�bL��n�>�!?��1�M�S�?	�f�]2���4���`�ǚ�GL�7$W�؝��9�߷ �Z�Ⳓ-!�%A?������w�l�)�`��}����|�ܬ�X���P�3%ɧ�y�,���}�����E].��Q�Y�8'��
x�$�tB}��o�8��Ј�AA��"���H�tk`�1}�1�]��fz&�|�}5��\�A�`;��:�1���F����ωMӓ����C~A_��ƿ�B�O w�rd��>�9��$I��t%�A�>b;xRJI�;6�� nM�˒�K��e��R�P(�6�����!#��S�����Jq�"�#��z�b��[3�j�'�b�~b9���J�P�?�O��Om��u��8�_�����
��A��\[ϡ�<~���/�Z��,��	��d�, I�B9|�#����OJ�7�]?���%Z(���B%�y�{�i�y��������7�f�G�W�L�:�z�Tv}�m�`�d��{�6�.|#>���ʊՙ<U�k���7'Sm1�'�j����JY)D�Nܚ��J{�!+(  C���l����<�陈R�ܢnMك��ϼď0�f��=Wq����$��tr�]���U��=|��r�[�	I#�\�ڑ��%�F������O ���]�T�C�Kd*ԙ�{ؠ�~u�  �MNs+0�F.W^����4�5���3 ��gFT�c�M�j|z%�^+۝�C�  �,Y(}�WW\I�V��H]�K� �U�� r	���8��ϔk���% 0(7�$I�NR��*�!���o�
 V�kX�V�s r�H�B�b��eݵ >�әA��#%4^\��4Mb<�Vog���� p�H�dz|�0����� ��x�e��6�R4�4�ͦ�S@m���� ��r+��i���R� �� �Ѵ����u���1�nͣ ��=�*a��(0���?�����%Ɣ�k�d ����H�4�].
INV�i����|׼Q~������i��u��ÁO����?��7׉�Pq��<���G�? S�X�Ͽ����i����	�+�|�� x�/��k�J�	����i����.�G���n p�N���
u�8xO�}`:��e��|�b��{�n͏�ᲅ<���ge��6 �z"�5�Vh��ј�^zi ܘM+I>[R�W��{�U��! �}aL}`:���ʚ��
M���n�)=��� >��(+K��v���0�Q��5? X�a�[�n��3J�r���y�[=�J^��՚�\����u4��f���,��2y�6@?`S"�Uhb���9�k��\�~�|�!�jeK
�!R>D��Q���#�V�9�{���:9qkҲR�XoD/�6����Z�J�~�$�u�i��� @m�Qe�e �_�4-W��	8���m ��T���lI�%G3�:]��0�E����O����'�}>��	^j"Ƒg�3�v�, �c"_�V1�r�Ȱ�1�^� ��2�w�ݶ >�c��g����鬬lZ�*vκ �ĤD�(T�hZb�c|�� ����h�x�t �TNgR��oh�R�c�,�V�WN� ����B�L��H���| �]𧢽p�z
 ��C��\2��6>��Y�	�R�d�U�r�NL6����ܻ0	�$ `���]��߻�� �>�V�����m2�r���1`�1�f <��N]��ܻ�Li�	s��'
������ ���5�F$�*2�[�bL��Ϳ&���F���|�Q��I:�9�}&p��^�ֈ?�s�jm  >�Y��R�Vd��[��VD��~ dy`��o�֖F�3#ͥ�v%�u���esp���70Qmsܐ{����`r�o��+N�i�lxQ�t+0�$)je��O�5�Q����v��Տ�k'-  ���H�ƿ	V��8�%��uE9No�sL(��O�E����$�+�w�;�"�"��� f�톿��乯]��T �w��]�U*u8e%�&igNٌS�^����-oȝ��;�EG�4�+r%��ߑi���-��| h[b�C;a�A[�2L�AbT����T��Έ$���D�Ue3�E�#b8�]e3]U�ɉ$��.�׫�\�\.b\�^��G7�����LB1�/Q
U4YYy�#I���~�ͧ`��\��{�^���^�/7�����^�.���Z~J�lˌ*M�Hꂖ��=!          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://yp2pgjjwpu1k"
path="res://.godot/imported/Pheromone.png-020eb48495453d092a38a06e97fe946b.ctex"
metadata={
"vram_texture": false
}
            GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /�@2�/��I���U��������hm���۶k۶m۶1x{س������f�"��ya��󑤧����Y��Fal۶��N׶���h��w�v�8������#�m#I��TLN]�GW��R ����Ѓ� ���KzW%����Ӟ��������D�i�?Y߻*^��)x �4��  $x���b(  9b���iѫ��z%���&Tg{����]i���j4��o�+]�>�u���}���"�W��+�4܄#��  W�H28�zS��Tg���np���ʰ���m�*k4���T\��L�@N4)t������r����N?�ر|��.׮���ߵ8�����+��r�|F2�x�1�Ϩ�;����܎Δ�(�� �B��%=q��%����^�ցg�R܌Z�a��� ���F�<�����.�c/no�4R�k� �j  ����[���y�c[�1^Ϟe]y (�yp��!{��:��0���Jy?� (���gȅ<�Gާ�`�sv����Ӡ$������ր����ZQ�oc�����8��Tg���k,h���V�Eo�T2x` ���U��Q�Ψ��T�A�ݠN���;�<Xi,x=�
bcz��wP���]�;,�X�,q���V2���P4�*�� <��$yҙ!|�V3܍����rTci2�1U��_�w��jو�p�z�"���B�M������%`X������ƒe�c+����f�B@K��Z|Yc	󦳢Z��i(�pR8M��E6�����ډSH @�ϟ��Ѹj�X��8*�/�A� Zb����M�%����W����[��S+w_j,u�p����n��bX0�6�&�Nc�3�_
�Gُ��4�����6��yM�΢�`t�i�� ��mtB�h).'ݍZ�1�OktD^P�`�Yt�l�=��itF�RGv��ﳳ -���4:$�Ց=dft��v�������f��?�;����F�d�a�͝��p�/itN^W\Ai:���3��y�ʳ)�)Ag`�"0 >��mtR�j��pd:iFG`��ar���Q9��6��;�8��X�����Y�]��뱤�'�ďv��wn��I��vw� �kZ�B����#��2�vw��N	ҷ5:-R��N!m�H�n���Q��r�ڡ&�n��s~������_HFkt�qH�qV`w�?#�� ��4:0o)����%@�p�	�щ9�
W��R�H���K'u�	��Ih��>�X�ёY�h���2!�뇗Fg��2|9� ����n�a�Zwwf����S +�)<�ѡy\�Oֲ�� )�ީѩ�#�i�A+���R�j�<��jAH8������_6��dj��i*Ե�N�����k�7���)���Sn �!���^�����F�w����9���Ҵ#q�Z7�"���%g��NΩ�hay�΅#�l@7��8��i�@�hNatt�Q���ly7}�Z�<�.�������gʞI' r��������T�`�7N�n���H�o����QM�K�$E��Z#��˭��|<�	n�"1:='�Ѧ�襗��^��X��ld�v��N`�[%F�g���_���]��v8'$���_,���(>��Y�F�gz��T��S�5�p�����
����������?  ~�_��~#��_)\�n�XY3�� xxx��U�o�7��#!!Yq�U�v��cb@�F��U�}y� ���X	Q �-�ի�Vu� <�V�`n�M�HH^��jp��&͝�om��S/�����zdn�����]�
��q�/�
{'�S��¼����mU8C��x��V�k���~ت���+��Y^6Y�_lU���}��
�>���V�O��|Ъ�oO�U�V�1��*��V�IW�U�E��R%'��'r��%%�_�*�d���UZ�wy��:���F�Oβ*�n�0倪*�+1	�T��܃֮W�����W�F���z9lE����O���V�7��FDD��`E<ƚ��xx�(���қ�p��j�e��#U^d�>  O?�~+
 ��wZn5y/!��Û:��)�� �������@t���7�_�������������cb@��S�����S���  p�̆�MO1H�!�X��-V|F[���/n����o!!t��[&��i�����#��5KHH���_����4`7o���	�9A�������GR���1��ٔ?�H�� ��$N�n�� ���Gu����(���^w�3eO3Y���C���B��.F����sW�k.�+9��K��+y�~��a���S[nvbS�Tna$��ؘ�h�9�>��bg���%Tٰ�5���LU᫧6�}���)�T��Z��'Y��p���k�)ԟ�nz��X���<�7,��?m��V����V������ԥU����B� �[g�q�0�p# Y�F�^=�p�Kr��||]$�u�E	z������M't�	�	�qkn�u�������J�d0��� ze�5]�E�~ 9��!�cF�}�q�}L�a �ןe���L���	1��P�.��Q׹|TmWtn� ��o�6o�N@���}�����g���{���#f0����wn�w��vCZ ƪ����׹�@��2���@�&���V�rb�6�n� �N0� ����nrG;�G@�Љ ���Y]�i�� �@`�L�����"�r@h�
���2��k,4��ɾ`�v����-�e3cw[���`�8_�xGك��.Fv[_�^Vf�F�.	���S����$iw:���� �������� 1�R �G�T.p^%>ř  @�+HЯ6�*�β����ڊ#�e�N�խ>�6|n�}�:�﫮��v��C�[�O�բ�Q86$��[
�D�[���Vy��
Rv�Dbu�+m p����l�r�G�ڎ���Hw9
� �C�o�ŗ,�7�����B�m�����~L9a�>+�i��	���� ��IX.�];�+��U�b� iB��"�]�Z�]���� i2�P�h4��=��3��ţNz���H	E���"n{wm,���!܇5 Xe(V�E��)<�+,�~�A�S�� �G���>>�Q�����lؓ�2S�78@��P����Es�xZs̢��V��7p� ��D`P�Ռ�4�-��<�ٌ��N?�C���V4
��oy�E�¿�A��c0�hq��K��x�3}�I�c҇�3���d��g�.<������C�G5�,^˞�]�������W<�8��������7LxC���0y�	ȍ��Ǎr^#l�\�^j�,�7OA��|� �aO�J. $�nU>���9>�]xd=�_��A}��-����>���xA��ڴ�~�f���v߷s��6�����e���T)"�{1a�k�yHP#���"oR�>o�|�/����m>��}�k�]lU�y���{q�?>� S��~!�G���e�6?�������L��_���K��h��/]��|���3�[희���ϣm�RL���� �{�+�O�ib"|��p.��D��ha�dms���'�D���/{b#�O�����+���ǘ�{q��O���Q�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bf3iyp72q31tl"
path="res://.godot/imported/Tier1Unit.png-2296a97d95e1cca3203c8a0331ef9af7.ctex"
metadata={
"vram_texture": false
}
           GST2   �   �      ����               � �        <   RIFF4   WEBPVP8L'   /��. 0��?��xPӶTf�O�n�|oD�'@|$��_E             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://0q4uybf7yrc5"
path="res://.godot/imported/Tier2Unit.png-d1d05a3039ecbc36e700928a31347939.ctex"
metadata={
"vram_texture": false
}
            GST2   �   �      ����               � �          RIFF  WEBPVP8L  /��5�۶ն�/���^��)}��������̌���Aj��ҽ� 	  I���j{l۶m۶m۶m�Z۶m6�r�$��Ltn�+�������?�e����b��3 Ud��0��4�Rg�A�HDĖ��Hu� $����b��Q=��t��/���hD:��:�/!z�h�F��)" �r��:�n>��NoQ���T��'��(���?DD�F�&�tuQ���q��ƀ�i����誈a�3 5�1�>D���<��Z��h�0��ӑ�� ��i��!:�腢��nW�O# ��F����)mt�3�4A�x���C]龜�1�$	�Z�!����ߋH�JR+6 >��_:�袈�i�$ 5b��v'���p����_!bf �����+�1"6DUb�,�����E|�қ�3������ۄ��t�0W#"���â��߱�g077�T����Vd]T��/G�Ř��P�6iљ��/07�$	*"b��n/���"�!$u��	����6-�<b(��$ P-@D�=U����E��Ph�Z ��:�mAtgD�4��h�ۈ�+�����1c�*0 �V�4��¢�}2"N�e� ��m��;1��
dY& f�5�-E[�vD܀���1�o���nˢ�"��ųLDP~����#z�h���Cj��,af�D�w�%���H�� �
�D7�U����U�k��Y��E�?�Ӣ������V�x��7E˹��#~��V��D�̛�X��/F��Uv�F�Z�ϖf��"����jeYf�f���$z�hy?��{�����$~GǴ�%�.�ʫd��I���荢e�����LD̼0���[�T�my[3A���9r_-������������a��+Z��#ұ"@R`��y�_���h�t|ğ�$I����|0�CE��FD\��Ĥ��1���Q�m�15-�$ ��:�ˈ^)Zůr���D�������DtMD���K��D�����#>π��� ��0]]���F�̀���4�OSׯ��ގ��%�,ˬ����W���E�Y�JJ�$������B���<W��
*�X���Gĝ�r2I�4/��S�h���#fx93 (&1?L�q�j�P�x�%df&���+�V���r���E�P�/��?��#PHރ���$"� �P<2�h~L����߱`� )"�M�\���/3�D��s�:��Fa�Y�cA@DP<�%��h���AJ D�"3袢��2bX� @� �C��ߚG|����E�yWD�V6�F������vE��1(����DO��3qj�X��2c�B't�QY龜�1� ��e��轢q}7"n)3�V�]��ta��^1�e�P�E�F���r�`���Z4�7F�怙Yi$��۴�����u�/�� f>�艢1~("ܓ°$I f��t|���&���#7�]4�/G�LJf�$i1�ҹ-�EgF�W� ��0�*�o���ӈx��  3oBtS�x_1Ī��Y)$=0�o���n�~���VI���-�;"�VI�$ ����F��vE���Y1$��7���Ɉ|B/+H��:�E#�މeV�,�P
�yr_��[�z�� "�$iC�������y�, S'=�Dk��|�#?g(Dt�CESx]Dl ���D`"�����$��Z�W�^k�\N�j�4���Z�3����Ѣ���Q�f<�j���3���ES�BD��ִ 3��0]S4���v�V+�2����u��tD�D�{$���`���������J���LS�$����td{�����C�-1_D�RѴ����)�,˒$�˿��6����=Fd��G�>.���#�ѽl� "Y�Wa��,�����"�e��z"���~iz�7"�U�M�"ړ螢	^tn�Լh��i3��hW�7E�W9�)�'��9D�M�5ì��M������tJ�M���#>π�#���>,��{#Ҟ"f�	3ъ̠ˊ&{wGD���f�Fæb�g�]���tE�E�3�1)3"fޙ�΢	��Ԉ6s6f�MfffD�ig�5e��q;lZfD�=S4�G��rfY���������Nh�����u˦�N�������Yff?��2L��&���G|����$x�r?4}�#�p3`����#��� �wl����q���H�M����^��K'�#p"ѓEE�謈��� ��:��3�g:��A�YD~�&�#��蝢R�2b��d���:�nI�ѹ-*�ߚG|�������}ST�wE�.�F"b�M�n.*����	cD `���0�o����$��#�)�K M�hQQ�wb�ߘm��Ȓ$�����W�;�f�\G�fQi^1�e 3��13K����sZT��H/�����}YT�7D���DD�F��E�W�"�Ơ��0ȗi�?+�衈t�8���P����toGG��	�	�-Ӿ�$z)"]8V���բB]tF�5� 13ͯ��-*��ӈx ��1�4�E�zY��"��01���5E�s]ć�Iz� _�y�U2�i ��LD�_T���#���B?�,I3��/���T6�q|/��|��E��މe ˲l�,˲$I��o:��J'z+"�C6��Q�O������y����Y��U�+�
���,Ơ�3�u�Z	E�F���2 X�����"�����l-���Z���h�0��ё�����#b�^k��s��/*��+��V+Yɲ��h��tJ�R�BD����e�����y�S#����j%I�U��dY^�!����?������LO�{�����.����O X�@D��YT�?�#���J`ff`4?���_YE�F��X�pѳE��o;"�#��3 33���;��z�=G����.����@�E��� Y�e�ff���¢="�D�*&z�r?Tb�΍�����'���ȿ�O`�0�(�O���2�����f��a� 3�D�dQ���<�sX��<�3�g:��ZtOD��h,��[T�;"⧌�F�,���F��q�&���}[�mtJ�?�9�$I��0 "ڔ�梢/"nC�4Y������+���i�$ɲ̖"38�豢��>G��lI$�23f�Otl�+�覈�Yff���z�7����E|�֟�*�,ˋ�:�E�=���-��^"�uQ��؈�3�lnn[3��D7U�+���2��|����:XtV�����-1�̇=\T��E�#�o���$~KǴ�Z���fu�̰5�$z������%�����hQ=DwF�� ����/�*rw�"~��ds ��k3L�U�Sq2 �II�E��{u�މeVܔ�ǁDU����M�$I ��K:�=�Ft~�4-1��I��D/U�w9�El�,IҼ��NoQ}D7D�ME `3<F�IQ���Z��D�sh `�5�������8��9�F�)���:����f��tpH�{�[T�/E���4�q���lO��茈u�t: ���<����ӈ���AD�fN�A��Q�D�E�*`fv($���b��� v@D+3D�U��y�!X�c��X��ێ��3j ��FtWQ�>���%I@�͏hg�W;��f1K�C>��٢�}3"_k� `�9�;��z���܈�i�$�A��胢
�:G~� @`��EEU|mD�����m��P��<��D���E�|_DާF���?��ގ���{�L�TQ5?�϶L��?�	��6:5�y�Lt+��WE_��vi�Su3���u�p�	  [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ytiw70samq5i"
path="res://.godot/imported/UnitSpawner.png-5218d667ea726aa33a2e3bf34e016bf5.ctex"
metadata={
"vram_texture": false
}
          RSRC                    PackedScene            ��������                                            )      resource_local_to_scene    resource_name 	   vertices 	   polygons 	   outlines    parsed_geometry_type    parsed_collision_mask    source_geometry_mode    source_geometry_group_name 
   cell_size    agent_radius    script    texture    margins    separation    texture_region_size    use_texture_padding    0:0/size_in_atlas    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity '   0:0/0/physics_layer_0/polygon_0/points    0:0/0/script    4:0/size_in_atlas    4:0/0 &   4:0/0/physics_layer_0/linear_velocity '   4:0/0/physics_layer_0/angular_velocity !   4:0/0/navigation_layer_0/polygon    4:0/0/script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer    navigation_layer_0/layers 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level 	   _bundled    
   Texture2D 3   res://Resources/TileMaps/Blocking/BlockingTile.png ��^"�0fD       local://NavigationPolygon_i2lkm       !   local://TileSetAtlasSource_p1u5m �         local://TileSet_r3v63 �         local://PackedScene_cq3f7 *         NavigationPolygon       %         B   B   �   B   �   �   B   �                                      %         �   �   B   �   B   B   �   B   ,       navigation_polygon_source_group 
                   TileSetAtlasSource                    -                      
                        %         �   �   B   �   B   B   �   B         -                      
                                                 TileSet        -   @   @   "         #         $                     PackedScene    (      	         names "         TestMap 	   position 	   tile_set    rendering_quadrant_size    format    layer_0/tile_data    TileMap    	   variants       
     �?  ��            @             �
  ��         ��         ��         ��         ��
         ��	         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��          ����        ����        ����        ����        ����        ����        ����        ����          ��         ��         ��         ��         ��         ��         ��         ��         ��        	 ��        
 ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��                                                                                                    	          
                                                                                                                                                                                                                 
          	                                                                                                     ��         ��         ��         ��         ��                                                                              ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��         ��         ��         ��        
 ��        	 ��         ��         ��         ��         ��         ��         ��         ��         ��          ��        ����        ����       ����       ����       ����       ����       ����        ����        ����        ��          ��         ��         ��         ��         ��         ��         ��         ��         ��         ��	         ��
         ��         ��         ��         ��         ��         ��         ��
         ��	         ��         ��        ��        ��        ��        ��        ��        ��        ��        ��         ����       ����       ����       ����       ����       ����       ����       ����       ����       ����       ��         ��        ��        ��        ��        ��        ��        ��        ��        ��	        ��	        ��
        ��        ��        ��        ��        ��        ��        ��        ��        ��
        ��
        ��	        ��        ��        ��        ��        ��        ��        ��        ��        ��                      ��         ��         ��         ��         ��        ��        ��        ��        ��        ��                                                                                                               	          
                  ��        ��        ��        ��                                                         
         	                                                                                                             ��         ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                                             	         
                                                                                                   
         	                                                                                                            ��         ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                                       	         
                                                                                 
         	                                                                                                      ��         ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                                     	         
                                                                                  
          	                                                                                                      ��         ��        ��        ��        ��       	 ��       	 ��       	 ��       	 ��       	 ��        	           	         	         	         	         	         	         	         	         	 	          	          
                                              	         	         	         	          	 
         
 
         
 	         
         
         
         
         
         
         
         
         
           
 ��        
 ��       
 ��       
 ��       
 ��        ��        ��        ��        ��        ��                                                                                            	          
                   
          
         
         
                                                        
          	                                                                                             ��         ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                            	          
                                                                                                      
          	                                                                                            ��        ��        ��        ��        ��        ��        ��        ��                                                                                           	          
                                                                                    
          	                                                                                              ��        ��        ��        ��        ��        ��        ��        ��                                                                                             	          
                                                                                    
          	                                                                                                  ��        ��        ��        ��        ��        ��        ��        ��                                                                                                	          
                                                                                    
          	                                                                                                       ��        ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                                   	         
                                                                        
         	         	                                                                                           ��        ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                          	         
         
                                                               
         	                                                                                           ��        ��        ��        ��        ��        ��                                                                                          	         
                                                                                                                                                             ��         ��         ��         ��         ��         ��         ��                                                                                                    	          
                              ��         ��         ��         ��         ��         ��         ��                                                                                                    	          
                                                 ����        ����        ����        ����        ����        ����        ����        ����        ����        ����        ����          ��         ��         ��         ��         ��         ��         ��         ��         ��        	 ��        
 ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��         ��        ����        ����        ����        ����        ����        ����        ��          ��         ��         ��         ��         ��         ��         ��         ����        ����        ����        ��         ��         ����        ��         ��         ��         ��         ��                                                                                                    	          
                                                                                                                                                                                                         ��         ��         ��         ��         ��                       node_count             nodes        ��������       ����                                            conn_count              conns               node_paths              editable_instances              version             RSRC            RSRC                    PackedScene            ��������                                            )      resource_local_to_scene    resource_name 	   vertices 	   polygons 	   outlines    parsed_geometry_type    parsed_collision_mask    source_geometry_mode    source_geometry_group_name 
   cell_size    agent_radius    script    texture    margins    separation    texture_region_size    use_texture_padding    0:0/size_in_atlas    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity '   0:0/0/physics_layer_0/polygon_0/points    0:0/0/script    4:0/size_in_atlas    4:0/0 &   4:0/0/physics_layer_0/linear_velocity '   4:0/0/physics_layer_0/angular_velocity !   4:0/0/navigation_layer_0/polygon    4:0/0/script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer    navigation_layer_0/layers 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level 	   _bundled    
   Texture2D 3   res://Resources/TileMaps/Blocking/BlockingTile.png ��^"�0fD       local://NavigationPolygon_q07e8       !   local://TileSetAtlasSource_p1u5m �         local://TileSet_r3v63 �         local://PackedScene_tmn8g *         NavigationPolygon       %         B   B   �   B   �   �   B   �                                      %         �   �   B   �   B   B   �   B   ,       navigation_polygon_source_group 
                   TileSetAtlasSource                    -                      
                        %         �   �   B   �   B   B   �   B         -                      
                                                 TileSet        -   @   @   "         #         $                     PackedScene    (      	         names "      	   DebugMap 	   position 	   tile_set    rendering_quadrant_size    format    layer_0/tile_data    TileMap    	   variants       
     �?  ��            @                                                                                                                   	           
                                                                                                                                                                         	           	          	          	          	          	          	          	          	          	         	 	         
 	          	          	          	          	          	          	                                                                                                                                                                                                                                                                                                                                                                                                                       	          
                    	          
                                                                                                                                                                                                                                                                                                                                                                          	         
                                                                                                   
         	         	         	         	         	                                                               
         
         
         
                                                                                                                                                                                                                                                node_count             nodes        ��������       ����                                            conn_count              conns               node_paths              editable_instances              version             RSRC               extends Area2D

@onready var unit_spawner = get_node("..")
var team_index: int

# Called when the node enters the scene tree for the first time.
func _ready():
	team_index = unit_spawner.team_index


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
               extends StaticBody2D

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

@onready var spawn_label := $SpawnLabel as Label

# enemies that entered the control area
var enemies: Array

# friendly units that entered the control area
var friendlies: Array

# Called when the node enters the scene tree for the first time.
func _ready():
	# turn_timer.timeout.connect(_on_turn_timer_timeout)
	if team_index == 1:
		modulate = Color(0, 1, 0)
	elif team_index == 2:
		modulate = Color(0, 0, 1)
	elif team_index == 3:
		modulate = Color(1, 0, 0)
	else:
		modulate = Color(0.5, 0.5, 0.5)
	
	spawn_counter = 0
	spawn_label.text = str(spawn_counter)

func _on_control_area_area_entered(area):
	if "team_index" in area:
		if area.team_index != team_index:
			if !enemies.has(area):
				enemies.push_back(area)
				area.BaseUnit.spawn_pheromone_area()
		else:
			if !friendlies.has(area):
				friendlies.push_back(area)

func _on_control_area_area_exited(area):
	if "team_index" in area:
		if area.team_index != team_index:
			if enemies.has(area):
				enemies.erase(area)
				area.BaseUnit.spawn_pheromone_area()
		else:
			if friendlies.has(area):
				friendlies.erase(area)

# happens every turn
func _on_turn_timer_timeout():
	if enemies.is_empty():
		convertion_counter = 0
	else:
		if friendlies.is_empty():
			convertion_counter += 1
			
		if convertion_counter >= convertion_turns:
			team_index = enemies.pick_random().team_index
			modulate = enemies.pick_random().modulate
			convertion_counter = 0
	if spawn_counter == spawn_turns:
		world.spawn_unit(control_area, team_index)
		world.spawn_unit(control_area, team_index)
		world.spawn_unit(control_area, team_index)
		spawn_counter = 0
		spawn_label.text = str(spawn_counter)
	else:
		spawn_counter += 1
		spawn_label.text = str(spawn_counter)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script "   res://UnitSpawner/unit_spawner.gd ��������
   Texture2D    res://Textures/UnitSpawner.png $���   Script !   res://UnitSpawner/ControlArea.gd ��������      local://CircleShape2D_6o0ja �         local://CircleShape2D_f0qtx &         local://PackedScene_dxyqc P         CircleShape2D          ՘�C         CircleShape2D          ��0B         PackedScene          	         names "         unit_spawner    scale    collision_mask    script    StaticBody2D 	   Sprite2D    texture    ControlArea    collision_layer    Area2D    CollisionShape2D    shape    SpawnLabel    offset_left    offset_top    offset_right    offset_bottom    text    horizontal_alignment    vertical_alignment    Label    _on_control_area_area_entered    area_entered    _on_control_area_area_exited    area_exited $   _on_control_area_body_shape_entered    body_shape_entered #   _on_control_area_body_shape_exited    body_shape_exited    	   variants       
      ?   ?                
     @?  @?                                                ��     2�     h�     �
     �@  �@      0             node_count             nodes     N   ��������       ����                                        ����                           	      ����                                
   
   ����                     
   
   ����                           ����      	      
                                                 conn_count             conns                                                                                                              node_paths              editable_instances              version             RSRC              extends Node2D

@export var player: Node2D

@onready var turn_timer := $TurnTimer as Timer

@onready var turn_label := $TurnLabel as Label

@onready var counter_label := $CounterLabel as Label

var turn_counter: int

# Called when the node enters the scene tree for the first time.
func _ready():
	turn_counter = 0
	counter_label.text = str(turn_counter)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("MouseLeft"):
		spawn_enemy(get_global_mouse_position())
	
	if Input.is_action_just_pressed("MouseRight"):
		spanw_minion(get_global_mouse_position())
		
	turn_label.text = str(int(turn_timer.time_left))

func spawn_unit(spawn_area: Area2D, team_index: int):
	if team_index != 0:
		var unit = load("res://BaseUnit/base_unit.tscn")
		var instance = unit.instantiate()
		
		var random = RandomNumberGenerator.new()
		random.randomize()
		
		instance.position.x = spawn_area.global_position.x + random.randi_range(-7, 7)
		instance.position.y = spawn_area.global_position.y + random.randi_range(-7, 7)
		instance.team_index = team_index
		instance.turn_timer = turn_timer
		
		add_child(instance)

func spawn_enemy(click_position):
	
	var enemy = load("res://BaseUnit/pheromone.tscn") #load("res://BaseUnit/base_unit.tscn")
	var instance = enemy.instantiate()
	instance.position = click_position
	instance.team_index = 2
	instance.dissipation_turns = 3
	instance.get_node("Sprite2D").modulate = Color(0, 0, 1, 0.9)
	instance.turn_timer = turn_timer
	add_child(instance)

func spanw_minion(click_position):
	
	var minion = load("res://BaseUnit/pheromone.tscn") # load("res://BaseUnit/base_unit.tscn")
	var instance = minion.instantiate()
	instance.position = click_position
	instance.team_index = 1
	instance.dissipation_turns = 3
	instance.get_node("Sprite2D").modulate = Color(0, 1, 0, 0.9)
	instance.turn_timer = turn_timer
	add_child(instance)

func reset_scene():
	if get_tree():
		get_tree().reload_current_scene()


func _on_turn_timer_timeout():
	turn_counter += 1
	counter_label.text = str(turn_counter)
              RSRC                    PackedScene            ��������                                                  Player    .. 
   TurnTimer    resource_local_to_scene    resource_name    script/source 	   _bundled    script       Script #   res://WorldScenes/2DScene/world.gd ��������   PackedScene    res://TileMaps/debug_map.tscn *t��B iv   PackedScene    res://PlayerScenes/player.tscn  �_��"r   PackedScene $   res://UnitSpawner/unit_spawner.tscn ��/a��u_      local://GDScript_bcy7m $         local://PackedScene_lvdc7 1      	   GDScript          �   extends Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
    PackedScene          	         names "   "      World    script    player    Node2D    TestMap 	   position    Player    visible    scale    current_map 
   TurnTimer 
   wait_time 
   autostart    Timer    unit_spawner 	   modulate    team_index    turn_timer    world    unit_spawner2 	   Camera2D    zoom 
   TurnLabel    offset_left    offset_top    offset_right    offset_bottom    text    horizontal_alignment    vertical_alignment    Label    CounterLabel    _on_turn_timer_timeout    timeout    	   variants    !                                
    ��� ���                
    ���  �B
   ���>���>              @@                                ��?���>  �?
     dB  D�                         ���>��?  �?
    ��C  PB      
     ;C  ��
     @?  @?     LD    ���     VD     ��
     @@  @@      3     @VD    ���    @`D     ��      0       node_count    	         nodes     �   ��������       ����            @               ���                           ���                           	  @                  
   ����      	      
                     ���                             @     @               ���                             @     @                     ����                                 ����                                                                     ����                                                        conn_count             conns               !                        !                        !                        node_paths              editable_instances              version             RSRC          extends Node2D

@export var player: Node2D

@onready var path_timer := $PathTimer as Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("MouseLeft"):
		spawn_enemy(get_global_mouse_position())
		pass
	
	if Input.is_action_just_pressed("MouseRight"):
		spanw_minion(get_global_mouse_position())
		pass

func spawn_enemy(position):
	
	var enemy = load("res://EnemyScenes/enemy.tscn")
	var instance = enemy.instantiate()
	instance.position = position
	instance.player = player
	instance.path_timer = path_timer
	add_child(instance)
	
	pass

func spanw_minion(position):
	
	var minion = load("res://MinionScenes/minion.tscn")
	var instance = minion.instantiate()
	instance.position = position
	instance.player = player
	instance.path_timer = path_timer
	add_child(instance)
	
	pass

func reset_scene():
	if get_tree():
		get_tree().reload_current_scene()
	pass
          GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://41argy5xxcp7"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 [remap]

path="res://.godot/exported/133200997/export-2343c8bf4a1babfe52de3661751e4657-base_unit.scn"
          [remap]

path="res://.godot/exported/133200997/export-0f9d47b2fa86451156e9511775644110-pheromone.scn"
          [remap]

path="res://.godot/exported/133200997/export-8212a442287ed43c64ee9d927dbd50ae-pheromone_old.scn"
      [remap]

path="res://.godot/exported/133200997/export-a4589d173f7ecc27b380d525f3c5a005-enemy.scn"
              [remap]

path="res://.godot/exported/133200997/export-7e3fe48faa8561ab125684ef8d8ade53-minion.scn"
             [remap]

path="res://.godot/exported/133200997/export-433f4fd5bbad5b4343a85011997acbe4-player.scn"
             [remap]

path="res://.godot/exported/133200997/export-72731cb8d21b345a7ffbbc0572658736-debug_map.scn"
          [remap]

path="res://.godot/exported/133200997/export-056bb5ae0f7b9d2a42a1c815c1574e65-test_map.scn"
           [remap]

path="res://.godot/exported/133200997/export-3aa139ddf4d22fb32e6925d809416f43-unit_spawner.scn"
       [remap]

path="res://.godot/exported/133200997/export-66964c21fcb3fa99499def0b21312cc7-world.scn"
              list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             z�!h.�m   res://BaseUnit/base_unit.tscns����1�Y   res://BaseUnit/pheromone.tscn���)�k!   res://BaseUnit/pheromone_old.tscn@��+e   res://EnemyScenes/enemy.tscn���p-s   res://MinionScenes/minion.tscn �_��"r   res://PlayerScenes/player.tscn��^"�0fD2   res://Resources/TileMaps/Blocking/BlockingTile.png�|Ś�O�&   res://Textures/Tier1Unit.png�@�?��   res://Textures/Tier2Unit.png$���   res://Textures/UnitSpawner.png*t��B iv   res://TileMaps/debug_map.tscn=aj   res://TileMaps/test_map.tscn��/a��u_#   res://UnitSpawner/unit_spawner.tscn�A|�*LK$   res://WorldScenes/2DScene/world.tscn�}��C�   res://icon.svg�����   res://Textures/Pheromone.png       ECFG      application/config/name          Spreading it - Game Jam    application/run/main_scene,      $   res://WorldScenes/2DScene/world.tscn   application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg     input/MoveLeft�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/MoveRight�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/MoveUp�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script         input/MoveDown�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script         input/MouseLeft�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script         input/MouseRight�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility      