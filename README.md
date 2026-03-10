# Projet_BDD_Chaigneau_Sieux

	Prompt :
```
Tu travailles dans le domaine des réseaux sociaux. Ton entreprise a comme activité d’établir une connexion professionnelle entre les différents utilisateurs. C’est une entreprise comme Microsoft. Tu peux collecter les données de réseaux sociaux comme Linkedin, Facebook ou les journaux. Inspire-toi du site web suivant : Linkedin.

Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.

D’abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.

Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.

Fournis donc les règles de gestion et le dictionnaire de données.


	Réponse :


Dans le cadre d’une entreprise de mise en relation professionnelle similaire à LinkedIn (appartenant au groupe Microsoft), voici les éléments d’analyse métier à transmettre à l’étudiant chargé d’appliquer la méthode MERISE.

________________________________________
1️⃣ Règles de gestion (vision métier – sans modélisation technique)
Les règles ci-dessous traduisent le fonctionnement réel de l’entreprise, indépendamment de toute structure de base de données.


Gestion des utilisateurs

•	Un utilisateur doit obligatoirement créer un compte pour accéder aux services.
•	Chaque utilisateur possède une adresse e-mail unique.
•	Un utilisateur dispose d’un profil professionnel.
•	Un profil contient des informations personnelles, professionnelles et académiques.
•	Un utilisateur peut modifier ses informations à tout moment.
•	Un utilisateur peut choisir le niveau de visibilité de certaines informations.
•	Un utilisateur peut désactiver ou supprimer son compte.


Réseau professionnel

•	Un utilisateur peut envoyer une demande de connexion à un autre utilisateur.
•	Une connexion est établie uniquement si la demande est acceptée.
•	Une demande de connexion possède un statut (en attente, acceptée, refusée).
•	Une connexion est bidirectionnelle.
•	Un utilisateur peut supprimer une connexion existante.


Expériences et formation

•	Un utilisateur peut enregistrer plusieurs expériences professionnelles.
•	Chaque expérience est associée à une entreprise.
•	Une expérience possède une date de début et éventuellement une date de fin.
•	Un utilisateur peut enregistrer plusieurs formations.
•	Une formation est associée à un établissement.


Entreprises

•	Une entreprise possède une page officielle.
•	Une entreprise peut publier des offres d’emploi.
•	Une offre d’emploi possède une date de publication et un statut (ouverte/fermée).
•	Un utilisateur peut postuler à une offre d’emploi.
•	Une candidature possède une date et un statut (envoyée, en cours, acceptée, refusée).


________________________________________
2️⃣ Dictionnaire de données brutes


⚠️ Ce dictionnaire ne préjuge pas du modèle conceptuel (MCD).
Il précise uniquement les données manipulées par l’entreprise.


Signification de la donnée	Type	Taille

Identifiant utilisateur	Numérique entier	10 chiffres
Adresse e-mail	Alphanumérique	150 caractères
Mot de passe (haché)	Alphanumérique	255 caractères
Nom	Alphabétique	100 caractères
Prénom	Alphabétique	100 caractères
Date de naissance	Date	10 caractères
Photo de profil (URL)	Alphanumérique	255 caractères
Biographie	Alphanumérique	2000 caractères
Ville	Alphabétique	100 caractères
Pays	Alphabétique	100 caractères
Numéro de téléphone	Alphanumérique	20 caractères
Date de création du compte	Date	10 caractères
Statut du compte	Alphabétique	20 caractères
Identifiant compte	Numérique entier	10 chiffres
Identifiant expérience	Numérique entier	10 chiffres
Nom établissement	Alphanumérique	150 caractères
Poste occupé	Alphanumérique	150 caractères
Date début expérience	Date	10 caractères
Date fin expérience	Date	10 caractères
Identifiant formation	Numérique entier	10 chiffres
Nom établissement	Alphanumérique	150 caractères
Diplôme obtenu	Alphanumérique	150 caractères
Identifiant établissement	Numérique entier	10 chiffres
Description	Alphanumérique	2000 caractères
Date création	Date	10 caractères
Identifiant offre emploi	Numérique entier	10 chiffres
Titre offre emploi	Alphanumérique	150 caractères
Description offre emploi	Alphanumérique	2000 caractères
Statut candidature	Alphabétique	20 caractères
```
