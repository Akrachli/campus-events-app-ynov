# Campus Events App - Rapport de Projet
**Étudiant:** Yassine  
**Date:** 13 Février 2025  
**Module:** Développement Mobile Flutter B2

---

## 📱 Présentation du Projet

**Campus Events** est une application mobile complète permettant aux étudiants de découvrir et s'inscrire aux événements du campus.

### Technologies Utilisées
- **Framework:** Flutter 3.41.0
- **Langage:** Dart
- **Backend:** Firebase (Authentication + Firestore)
- **Architecture:** MVVM avec Provider

---

## ✅ Modules Implémentés

### ✓ Module 1: Interface Utilisateur (UI/UX)
- ✅ Navigation fluide entre écrans multiples
- ✅ Design Clean et responsive
- ✅ Architecture complète:
  - Écran d'accueil (Login/Register)
  - Liste des événements (ListView avec cards)
  - Détail d'un événement
  - Profil utilisateur

### ✓ Module 2: Événements & Data (Base de Données)
- ✅ Firebase Firestore configuré
- ✅ Lecture des événements depuis Firestore
- ✅ Gestion des états de chargement (CircularProgressIndicator)
- ✅ Gestion des erreurs (pas d'internet, serveur inaccessible)
- ✅ Données dynamiques (pas de hardcoding)

### ✓ Module 3: Authentification (Sécurité)
- ✅ Firebase Authentication configuré
- ✅ Email/Password login
- ✅ Création de compte
- ✅ Protection des routes (redirections)
- ✅ Stockage des données utilisateur dans Firestore

### ✓ Module 4: Notifications
- ✅ Service de notifications implémenté
- ✅ Notifications locales configurées
- ✅ Bouton pour tester les notifications

---

## 📂 Structure du Code

\`\`\`
lib/
├── main.dart                      # Point d'entrée + AuthWrapper
├── firebase_options.dart          # Configuration Firebase
├── models/
│   ├── event.dart                 # Modèle Event avec fromFirestore
│   └── user_model.dart            # Modèle User
├── services/
│   ├── auth_service.dart          # Service d'authentification
│   ├── firestore_service.dart     # Service Firestore
│   └── notification_service.dart  # Service de notifications
├── screens/
│   ├── auth/
│   │   ├── login_screen.dart      # Écran de connexion
│   │   └── register_screen.dart   # Écran d'inscription
│   ├── home/
│   │   └── home_screen.dart       # Navigation principale
│   ├── events/
│   │   ├── events_list_screen.dart # Liste des événements
│   │   └── event_detail_screen.dart # Détail événement
│   └── profile/
│       └── profile_screen.dart    # Profil utilisateur
└── widgets/
    ├── event_card.dart            # Widget card événement
    └── custom_button.dart         # Bouton personnalisé
\`\`\`

---

## 🔥 Configuration Firebase

### Firestore - Collection "events"
Chaque événement contient:
- **title** (string): Nom de l'événement
- **description** (string): Description détaillée
- **date** (timestamp): Date et heure
- **location** (string): Lieu de l'événement
- **category** (string): Catégorie (Tech, Social, Conférence)
- **imageUrl** (string): URL de l'image

### Authentication
- Méthode: Email/Password
- Stockage utilisateur dans collection "users"

---

## 💻 Qualité du Code

### ✅ Bonnes Pratiques Respectées
- Nommage en CamelCase
- Code découpé en widgets réutilisables
- Utilisation correcte de async/await
- Gestion d'erreurs avec try/catch
- Séparation en services (auth, firestore, notifications)

### Architecture
- **MVVM** avec Provider pour state management
- Services pour la logique métier
- Models pour les données
- Screens pour l'UI
- Widgets réutilisables

---

## 📸 Fonctionnalités Clés

### 1. Authentification
- Formulaires de login/register avec validation
- Gestion des erreurs Firebase
- Déconnexion avec confirmation

### 2. Liste des Événements
- Affichage dynamique depuis Firestore
- Cards avec images, catégories, dates
- Pull-to-refresh
- États de chargement et d'erreur

### 3. Détail Événement
- SliverAppBar avec image
- Informations complètes (date, heure, lieu)
- Bouton d'inscription
- Design soigné avec icônes

### 4. Profil Utilisateur
- Avatar avec initiale
- Statistiques d'événements
- Menu avec options
- Déconnexion sécurisée

---

## 🚀 Installation & Lancement

\`\`\`bash
# Cloner le projet
git clone [URL_REPO]
cd campus_events_app

# Installer les dépendances
flutter pub get

# Lancer l'application
flutter run
\`\`\`

---

## 📦 Dépendances Principales

\`\`\`yaml
firebase_core: ^2.24.2          # Firebase SDK
firebase_auth: ^4.15.3          # Authentification
cloud_firestore: ^4.13.6        # Base de données
flutter_local_notifications     # Notifications
provider: ^6.1.1                # State management
intl: ^0.18.1                   # Formatage dates
google_fonts: ^6.1.0            # Polices
\`\`\`

---

## ✨ Points Forts du Projet

1. **Architecture propre** - Code bien organisé et maintenable
2. **UX soignée** - Design moderne et intuitif
3. **Gestion d'erreurs complète** - États de chargement et erreurs
4. **Firebase intégré** - Backend réel et fonctionnel
5. **Code commenté** - Facilite la compréhension
6. **Responsive** - S'adapte aux différentes tailles d'écran

---

## 🎯 Améliorations Futures

- Module Bonus: Caméra pour avatar utilisateur
- Filtrage des événements par catégorie
- Recherche d'événements
- Calendrier des événements
- Partage d'événements
- Notifications push pour nouveaux événements

---

## 📝 Conclusion

Ce projet démontre une maîtrise complète de Flutter et l'intégration de services backend. Tous les modules requis sont implémentés avec des bonnes pratiques de développement.

**Validation des compétences:**
- ✅ Construction d'interface multi-écrans fluide
- ✅ Gestion de données dynamiques et asynchrones
- ✅ Intégration de services Backend (Firebase)
- ✅ Interaction avec les fonctionnalités natives (Notifications)
