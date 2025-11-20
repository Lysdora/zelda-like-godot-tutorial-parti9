extends MarginContainer

@onready var nom_pnj_label = $PanelContainer/VBoxContainer/NomPNJ
@onready var texte_label = $PanelContainer/VBoxContainer/TexteDialogue


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Cacher la boite de dialogue au démarrage
	hide()



	

func afficher_dialogue(nom: String, texte: String):
	nom_pnj_label.text = nom
	texte_label.text = texte
	show()

func fermer_dialogue():
	hide()
