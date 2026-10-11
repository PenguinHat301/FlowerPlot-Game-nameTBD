extends Node2D
class_name plot
# Basic plot, will hold the variable for the plant is is holding
# and likely have the bulk of the code

@onready var plot_dirt_textures: AnimatedSprite2D = $PlotDirtTextures
@onready var plant_marker: Marker2D = $PlantMarker
@onready var hover_area: Area2D = $HoverArea

@export var curPlant : Plant

var PlantHeld #What plant is it holding? can be null
var Active : bool # can this plot be used?
var Occupied : bool # is there currently a plant in this plot?

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Called when added to field by default
func initPlot(activeInput: bool):
	Active = activeInput
	plot_dirt_textures.set_frame(randi() % plot_dirt_textures.sprite_frames.get_frame_count("default"))

func placePlant(plantToPlace: Plant):
	curPlant = plantToPlace
	add_child(curPlant)
