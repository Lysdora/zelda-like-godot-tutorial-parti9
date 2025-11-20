extends StaticBody2D

@onready var zone_interaction: Area2D = $ZoneInteraction
@onready var icone_interaction: Sprite2D = $ZoneInteraction/IconeInteraction

# Variable pour savoir si le petit player est proche
var player_a_proximite: bool = false


func _ready() -> void:
	icone_interaction.visible = false


# Fonction appelée à chaque input (touche appuyée)
func _input(event: InputEvent) -> void:
	# Si le joueur est proche ET qu'il appuie sur E (ui_accept)
	if player_a_proximite and event.is_action_pressed("ui_accept"):
		demarrer_dialogue()


# Fonction pour démarrer le dialogue avec Bilbo
func demarrer_dialogue() -> void:
	# On récupère la DialogueBox depuis l'arbre des nœuds
	# Chemin : Root (Foret) -> UI -> DialogueBox
	var dialogue_box = get_node("/root/Foret/UI/DialogueBox")

	# On affiche le dialogue de Bilbo
	dialogue_box.afficher_dialogue("Bilbo", "Salut aventurier ! J'ai perdu mes poulets... Peux-tu m'aider à les retrouver ?")

	print("💬 Dialogue avec Bilbo démarré !")


func _on_zone_interaction_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("Le Player est dans la zone")
		player_a_proximite = true
		icone_interaction.visible = true



func _on_zone_interaction_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		print("Le Player sort de la zone")
		player_a_proximite = false
		icone_interaction.visible = false
