extends StaticBody2D

var vie: int
@onready var sprite_2d: Sprite2D = $Sprite2D

@export var data: RocheData

func _ready() -> void:
	vie = data.vie_max
	sprite_2d.texture = data.texture
