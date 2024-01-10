extends Node2D

@onready var paper_button = $ButtonsControl/ControlButtons/MarginContainer/PaperButton
@onready var rock_button = $ButtonsControl/ControlButtons/MarginContainer/RockButton
@onready var scissors_button = $ButtonsControl/ControlButtons/MarginContainer/ScissorsButton
@onready var health_bar = $HealthBar

var enemy_chose

func _ready():
	interact()
	enemy_choice(enemy_chose)
	
func interact():
	paper_button.pressed.connect(func():
		if enemy_choice(enemy_chose) == "Scissors":
			health_bar.value -= 1
		if enemy_choice(enemy_chose) == "Rock":
			health_bar.value += 1
		print(health_bar.value)
		)

#Randomises Enemy choices
func enemy_choice(picker):
	var pickit = randi() % 2
	if pickit == 0:
		picker = "Rock"
		print(picker)
		return picker
	if pickit == 1:
		picker = "Paper"
		print(picker)
		return picker
	if pickit == 2:
		picker = "Scissors"
		print(picker)
		return picker

