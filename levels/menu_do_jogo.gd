extends Control

@onready var btn_jogar: Button = $VBoxContainer/jogar
@onready var btn_creditos: Button = $VBoxContainer/creditos
@onready var popup_controles: AcceptDialog = $popUpControle
@onready var btn_sair = $VBoxContainer/Sair

func _ready() -> void:
	
	# Conecta o botão Jogar para abrir o popup
	btn_jogar.pressed.connect(_on_btn_jogar_pressed)
	
	# Quando o usuário clicar em OK no popup, começa o jogo
	popup_controles.confirmed.connect(_on_popup_controles_confirmed)
	
	btn_creditos.pressed.connect(_on_btn_creditos_pressed)
	
	btn_sair.pressed.connect(_on_btn_sair_pressed)

func _on_btn_jogar_pressed() -> void:
	# Abre a janela com os controles
	popup_controles.popup_centered()

func _on_btn_sair_pressed() -> void:
	get_tree().quit() 

func _on_popup_controles_confirmed() -> void:
	# Depois de clicar em OK, troca para a cena do jogo
	# 👉 Troque o caminho se sua cena tiver outro nome
	get_tree().change_scene_to_file("res://world.tscn")

func _on_btn_creditos_pressed() -> void:
	get_tree().change_scene_to_file("res://creditos.tscn")
