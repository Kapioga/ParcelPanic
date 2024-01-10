extends Control

@onready var paper_button = $ControlButtons/MarginContainer/PaperButton
@onready var rock_button = $ControlButtons/MarginContainer/RockButton
@onready var scissors_button = $ControlButtons/MarginContainer/ScissorsButton


func _ready():
	pass # Replace with function body.



func _process(delta):
	pass


func _on_paper_button_pressed():
	print("Pressed Paper")


func _on_rock_button_pressed():
	print("Pressed Rock")


func _on_scissors_button_pressed():
	print("Pressed Scissors")
