extends Control

@onready var btn_voltar = $VBoxContainer/Voltar

func _ready():
	btn_voltar.pressed.connect(_on_btn_voltar_pressed)

func _on_btn_voltar_pressed():
	get_tree().change_scene_to_file("res://levels/menuDoJogo.tscn")
