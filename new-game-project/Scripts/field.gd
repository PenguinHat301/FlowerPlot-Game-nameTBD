extends Node2D
# Field contains all of the plots, likely in a 2D array. When created,
# it will called init, to create an empty 3*3 of plots

const PLOT = preload("uid://ct33enbt5vtdq")
var curPlot : plot
var plotArray : Array
# Starter position for placing the plots
var xPos = position.x
var yPos = position.y
# how big is the plot? (in pixels)
@export var plotSize = 16
@export var spacingSize = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init(3,3) # basic 3*3, will maybe be changed later for custom games
	
func init(fieldSizeX: int, fieldSizeY: int):
	for x in fieldSizeX:
		for y in fieldSizeY:
			curPlot = PLOT.instantiate()
			add_child(curPlot)
			curPlot.initPlot(1)
			curPlot.position.x = x * (plotSize + spacingSize)
			curPlot.position.y = y * (plotSize + spacingSize)
