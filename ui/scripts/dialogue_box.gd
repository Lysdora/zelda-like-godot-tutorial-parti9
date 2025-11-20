extends MarginContainer

# ===== RÉFÉRENCES AUX NŒUDS ENFANTS =====
# @onready = "quand la scène est prête, va chercher ces nœuds"
@onready var nom_pnj_label = $PanelContainer/VBoxContainer/NomPNJ
@onready var texte_label = $PanelContainer/VBoxContainer/TexteDialogue


# ===== FONCTION APPELÉE AU DÉMARRAGE =====
func _ready() -> void:
	# On cache la boîte de dialogue au démarrage du jeu
	hide()

	# ===== TEST : Pour vérifier que ça fonctionne =====
	# On attend 2 secondes, puis on affiche un dialogue
	await get_tree().create_timer(2.0).timeout
	afficher_dialogue("Bilbo", "Coucou aventurier ! Le système de dialogue fonctionne parfaitement !")

	# On attend 4 secondes de plus, puis on ferme le dialogue
	await get_tree().create_timer(4.0).timeout
	fermer_dialogue()
	print("✅ Dialogue fermé avec succès !")


# ===== FONCTION POUR AFFICHER UN DIALOGUE =====
# Paramètres :
#   - nom : le nom du PNJ (ex: "Bilbo", "Marchand")
#   - texte : le texte du dialogue (ex: "Salut aventurier !")
func afficher_dialogue(nom: String, texte: String) -> void:
	nom_pnj_label.text = nom      # Change le nom affiché
	texte_label.text = texte      # Change le texte affiché
	show()                        # Rend la boîte visible


# ===== FONCTION POUR FERMER LE DIALOGUE =====
func fermer_dialogue() -> void:
	hide()  # Cache la boîte de dialogue
