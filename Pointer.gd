class_name Pointer
extends Node2D
onready var screen = get_viewport().get_visible_rect().size
var size = 30
#func _draw():
#	draw_circle(Vector2(0,0),5,Color.azure)

func _ready():
	print(screen)
	position = screen/2
	

func _process(delta):
	var t = delta * 10
		
	var mouse : Vector2 = get_global_mouse_position()
	
	position = lerp(position,mouse,lerp(t*t*t,sqrt(t),t))
