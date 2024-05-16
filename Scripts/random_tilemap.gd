extends TileMap

@export var map: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	_make_random(25, 8, -17)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		_make_random(50, 8, -17)

# This function only works for the premade "Ground" Tileset that has atlas values of 15 x 15
func _make_random(size, pos_x, pos_y):
	var atlas_min = 0
	var atlas_max = 15
	for i in range(size):
		for j in range(size):
			set_cell(0, Vector2i(i + pos_x, j+pos_y), 0, Vector2i((randi() % (atlas_min - atlas_max + 1) + atlas_min), (randi() % (atlas_min - atlas_max + 1) + atlas_min)))
