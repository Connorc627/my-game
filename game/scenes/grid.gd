# Collection of functions to work with a Grid.
extends TileMap

enum ENTITY_TYPES {HERO, ENEMY}

var tile_size = get_cell_size()
var half_tile_size = tile_size / 2

onready var enemy = preload("res://enemy/enemy.tscn")
onready var hero = preload("res://hero/hero.tscn")


func _ready():
	pass

#	# Place hero in world
#	var new_hero = hero.instance()
#	new_hero.set_pos(map_to_world(Vector2(2,2)) + half_tile_size)
#	add_child(new_hero)

#	# Place enemies in world
#	var positions = [ Vector2(4,4) ]
#	for pos in positions:
#		var new_enemy = enemy.instance()
#		new_enemy.set_pos(map_to_world(pos) + half_tile_size)
#		add_child(new_enemy)


func update_child_pos(new_pos, direction, type):
	# Returns the new target move_to position
	var grid_pos = world_to_map(new_pos)
	var new_grid_pos = grid_pos + direction
	var target_pos = map_to_world(new_grid_pos) + half_tile_size
	return [ target_pos, new_grid_pos ]
