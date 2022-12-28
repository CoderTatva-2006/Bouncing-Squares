extends Node2D


var sq = preload("res://sq.tscn")
onready var screen = get_viewport().get_visible_rect().size

func _ready():
	for _x in range(10):
		add_child_below_node(get_child(_x),sq.instance())
	for child in get_children():
		child.position = screen/2
			
	
