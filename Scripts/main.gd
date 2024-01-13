extends Node2D

@onready var paper_button = $ButtonsControl/ControlButtons/MarginContainer/PaperButton
@onready var rock_button = $ButtonsControl/ControlButtons/MarginContainer/RockButton
@onready var scissors_button = $ButtonsControl/ControlButtons/MarginContainer/ScissorsButton
@onready var health_bar = $HealthBar

var enemy_chose

func _ready():
	enemy_choice(enemy_chose)
	interact()
	
func interact():
	var enemy_set = enemy_choice(enemy_chose)
	#PAPER LOGIC
	paper_button.pressed.connect(func():
		if enemy_set == "Scissors":
			health_bar.value -= 1
			print("Your health is: " + str(health_bar.value))
		if enemy_set == "Rock":
			health_bar.value += 1
			print("Your health is: " + str(health_bar.value))
		else:
			print("DRAW")
		print("Your health is: " + str(health_bar.value))
		)
		
	#ROCK LOGIC
	rock_button.pressed.connect(func():
		if enemy_set == "Paper":
			health_bar.value -= 1
			print("Your health is: " + str(health_bar.value))
		if enemy_set == "Scissors":
			health_bar.value += 1
			print("Your health is: " + str(health_bar.value))
		else:
			print("DRAW")
			print("Your health is: " + str(health_bar.value))
		)
		
	#SCISSORS LOGIC
	scissors_button.pressed.connect(func():
		if enemy_set == "Rock":
			health_bar.value -= 1
			print("Your health is: " + str(health_bar.value))
		if enemy_set == "Paper":
			health_bar.value += 1
			print("Your health is: " + str(health_bar.value))
		elif enemy_set == "Scissors":
			print("DRAW")
			print("Your health is: " + str(health_bar.value))
		)

#Randomises Enemy choices
func enemy_choice(picker):
	var pickit = randi() % 2
	if pickit == 0:
		picker = "Rock"
		print("Enemy chose: " + picker)
		return picker
	if pickit == 1:
		picker = "Paper"
		print("Enemy chose: " + picker)
		return picker
	if pickit == 2:
		picker = "Scissors"
		print("Enemy chose: " + picker)
		return picker

