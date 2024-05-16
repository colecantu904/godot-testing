extends Node

@export var adder_for: Adder

# Called when the node enters the scene tree for the first time.
func _ready():
	adder_for.add(10)
