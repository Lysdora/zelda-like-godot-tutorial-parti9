extends StaticBody2D

@onready var zone_interaction: Area2D = $ZoneInteraction
@onready var icone_interaction: Sprite2D = $ZoneInteraction/IconeInteraction

# Variable pour savoir si le petit player est proche
var player_a_proximite: bool = false


func _ready() -> void:
	icone_interaction.visible = false

func _unhandled_input(event: InputEvent) -> void:
	# Si le player est proche et SI il appuie sur E
	if player_a_proximite and event.is_action_pressed('Interagir'):
		# On va demarrer le dialogue ici
		demarrer_dialogue()

func demarrer_dialogue():
	print("On va demarrer le dialogue avec Bilbo")

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
