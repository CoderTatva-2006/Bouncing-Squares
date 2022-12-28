class_name sq
extends Node2D

var size
var pointer
var color

func random_color():
	randomize()
	return Color((randf()/2) + 0.5,(randf()/2)+0.5,(randf()/2) + 0.5,1)

func _ready():
	
	
	color = random_color()
#	size = (get_position_in_parent() * 20) + (randf()*10)
	
	pointer = get_parent().get_child(get_position_in_parent()-1)
	size = pointer.size + 30
	
func _draw():
	draw_rect(Rect2(-size/2,-size/2,size,size),color,false,2,true)
	

	
func _process(delta):
	
	var t = delta * 10
	position = lerp(position,pointer.position,lerp(t*t*t,sqrt(t),t))

