extends Camera2D

@export var tilemap:TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	var maprect = tilemap.get_used_rect()
	var tilesize = tilemap.cell_quadrant_size
	var worldsizeinpixel = maprect.size * tilesize
	limit_right = worldsizeinpixel.x
	limit_bottom = worldsizeinpixel.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
