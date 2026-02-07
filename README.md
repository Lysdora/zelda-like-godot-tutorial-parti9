# 🗒️ Zelda-like Godot Tutorial - Complete Series
> Série de tutoriels complets pour créer un RPG Zelda-like pixel art avec Godot 4 par **Lysdora Craft**

![Godot 4.5](https://img.shields.io/badge/Godot-4.5+-blue?logo=godotengine)
![License MIT](https://img.shields.io/badge/license-MIT-green)
![YouTube](https://img.shields.io/badge/YouTube-Lysdora%20Craft-red?logo=youtube)

---

## 📺 Chaîne YouTube

🎬 **[Lysdora Craft - Tutoriels Godot](https://www.youtube.com/@LysdoraCraft)**

Apprends à créer ton propre jeu d'aventure RPG façon Zelda, étape par étape, avec des explications claires et bienveillantes ! 🎮💖

---

## 🎯 À propos de cette série

Cette série de tutoriels YouTube te guide dans la création d'un RPG pixel art complet avec Godot Engine. Tu apprendras à créer un jeu avec :

- Un personnage jouable avec animations
- Des PNJ (Personnages Non-Joueurs) avec IA
- Un système de quêtes complet
- Une carte avec tilemap et collisions
- Un système de ressources personnalisées (Custom Resources)
- Un système de minage avec minerais
- Et bien plus encore ! ⚔️

---

## 🗂️ Comment utiliser ce repository ?

### 📦 Structure du projet

Ce repository contient **plusieurs parties** du tutoriel, organisées en **branches** :

- **`main`** → Code de la **partie la plus récente** (actuellement partie 9)
- **`partie-09`** → Custom Resources & Minerais *(branche figée)*
- **`partie-08`** → Journal de quêtes *(branche figée)*
- **`partie-07`** → PNJ avec intelligence artificielle *(branche figée)*
- **`partie-06`** → Animation TWEEN *(branche figée)*
- **`partie-05`** → Un PNJ dans ton jeu *(branche figée)*

Chaque branche représente l'état final du code à la fin de l'épisode correspondant.

---

## 🚀 Télécharger une partie spécifique

### Option 1 : Télécharger le ZIP via GitHub

1. Va sur **[ce repository](https://github.com/Lysdora/zelda-like-godot-tutorial)**
2. Clique sur le menu déroulant **"main"** (en haut à gauche)
3. Choisis la branche que tu veux (ex: `partie-09`)
4. Clique sur le bouton vert **"Code"** → **"Download ZIP"**
5. Décompresse le ZIP
6. Ouvre le projet dans Godot Engine

### Option 2 : Cloner avec Git

```bash
# Clone la branche de la partie 9
git clone -b partie-09 https://github.com/Lysdora/zelda-like-godot-tutorial.git

# Ou clone la partie 8
git clone -b partie-08 https://github.com/Lysdora/zelda-like-godot-tutorial.git
```

---

## 📚 Liste des parties

| Partie | Titre | Lien vidéo | Branche |
|--------|-------|------------|---------|
| 5️⃣ | **Un PNJ dans ton jeu** | [▶️ Voir la vidéo](https://www.youtube.com/watch?v=nlPhfjMJohw) | [`partie-05`](../../tree/partie-05) |
| 6️⃣ | **Animation TWEEN** | [▶️ Voir la vidéo](https://www.youtube.com/watch?v=eHGu-qMhC4c) | [`partie-06`](../../tree/partie-06) |
| 7️⃣ | **PNJ avec IA** | [▶️ Voir la vidéo](https://www.youtube.com/watch?v=CXW521WiT9k) | [`partie-07`](../../tree/partie-07) |
| 8️⃣ | **Journal de quêtes** | [▶️ Voir la vidéo](https://youtu.be/X2KOwVpLjYA) | [`partie-08`](../../tree/partie-08) |
| 9️⃣ | **Des cailloux magiques ! (Custom Resources)** | [▶️ Voir la vidéo](https://www.youtube.com/watch?v=onTXq2PL4MI) | [`partie-09`](../../tree/partie-09) |

---

## 🆕 Partie 9 — Des cailloux magiques ! (Custom Resources) ⛏️✨

Dans cette partie, on découvre le système de **Custom Resources** de Godot 4 pour créer des données de minerais réutilisables !

### 🎓 Ce que tu apprends

- Créer un script **RocheData** qui étend `Resource` avec `class_name`
- Utiliser `@export` pour définir les propriétés (texture, vie_max, rarete)
- Créer des fichiers **`.tres`** (minerai de pierre, minerai de cuivre)
- Connecter les ressources à une scène **Roche** via l'inspecteur

### 📁 Nouveaux fichiers

```
scripts/
  roche.gd              # Script de la scène Roche
  roche_data.gd         # Custom Resource (class_name RocheData)
data/
  roche/
    mine_pierre.tres     # Données du minerai de pierre
    mine_cuivre.tres     # Données du minerai de cuivre
scenes/
  roche.tscn             # Scène du rocher minable
assets/
  stone.png              # Spritesheet minerai de pierre
  copper.png             # Spritesheet minerai de cuivre
```

### 🧪 Structure de RocheData

```gdscript
class_name RocheData
extends Resource

@export var texture: AtlasTexture
@export var vie_max: int = 3
@export var rarete: int = 50
```

### 💡 Exercices suggérés

1. 🔨 Crée un **minerai de fer** (`mine_fer.tres`) avec `vie_max = 8` et `rarete = 25`
2. ⛏️ Ajoute une propriété `nom: String` à RocheData pour afficher le nom du minerai
3. 💎 Crée un **minerai de diamant** ultra rare avec tes propres valeurs !

---

## 🛠️ Prérequis

- [Godot Engine 4.4+](https://godotengine.org/download) (gratuit et open-source)
- Aucune expérience en programmation requise !
- De la bonne humeur 😄

---

## 📝 License

Ce projet est sous licence MIT. Tu es libre de l'utiliser, le modifier et le partager !

---

## 💜 Soutenir Lysdora Craft

- 🔔 **Abonne-toi** à la chaîne [Lysdora Craft](https://www.youtube.com/@LysdoraCraft)
- 👍 **Like** les vidéos si elles t'aident
- 💬 **Commente** pour partager tes créations et poser tes questions
- ⭐ **Star** ce repository si tu le trouves utile !
