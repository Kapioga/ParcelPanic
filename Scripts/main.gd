extends Node2D

var ROCK
var PAPER
var SCISSORS
var enemy_choice = ROCK, PAPER, SCISSORS

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func enemy_choosing(enemy_choice):
	var enemy_dis = randomize(enemy_choice)
	print(enemy_dis)
	
#func play_logic(ROCK, PAPER, SCISSORS):
