# __**Test technique iOS**__

## Introduction

Le but de ce test est de créer une application simple. Cette application doit nous permettre d'évaluer l'état de vos connaisances sur la plateforme iOS. Aucune limite de temps n'est imposé pour réaliser ce test (dans la limite du raisonable). Il n'y a donc aucune raison de se presser. Favorisez la qualité à la quantité.

Vous devrez générer un nouveau projet à partir de XCode 9/10 ou reprendre le projet existant (si il y en a un), utiliser la dernière version de swift (5.1) et cocoapods (>= 1.8) pour la gestion de vos dépendances. 

Vous êtes libre d’utiliser les libraries externes de votre choix si nécessaire. À vous également de choisir l'architeture que vous pensez la plus adaptée. Attendez vous à être questionné sur ces choix.

## Données fournies

 - Une liste d'équipements;
 - Une liste de points de contrôles;

## Consignes

L'application devra comporter deux écrans, aucun système d'authentification n'est requis.
L'UI de l'application ne vous est pas imposée, laissez parler votre créativité. Cependant ce n'est pas l'élément principal sur lequel vous serez jugé, privilégiez la qualité du code et la pertinence de vos choix techniques. 

### Écran 1 - Liste des équipements :

Le but de cet écran est :

1. Afficher la liste des équipements fournis dans le fichier xlsx triés alphabétiquement par leur nom, la cellule comprendra :	
	- Le nom de l'équipement ;
	- Le domaine de l'équipement ;
	- Le nombre de défauts associés ;
	- La photo de l'équipement.
	
2. Un barre de recherche permettant de filtrer les équipements par leur domaine ou par leur nom ;
3. Pouvoir accéder à l'écran de détail d'un équipement au tap de sa cellule.

### Écran 2 - Détail d'un équipement : 

Le but de cet écran est :

1. Afficher la photo de l'équipement ;
2. Afficher une section des infos de l'équipement (nom, domaine, etc...) ;
3. Afficher la liste des points de contrôle et son défaut associé. Pour chaque cellule, afficher :
	- Le point de contrôle ;
	- Le défaut ;
	- La préconisation ;
	- La photo si elle existe.

## Contraintes

Vous devrez absolument respecter les contraintes suivantes:

#### Obligatoire :

- L'application devra être compatible iOS 10 minimum ;

- Interdiction d'utiliser les Storyboard. Au moins une des vue de l'application devra être composée à l'aide d'un XIB et de l'Autolayout ;

- L'application doit absolument compiler, 0 warning sera fortement apprécié.

#### Optionnel :

- Commenter judicieusement votre code en anglais là ou cela vous semblera nécessaire ;

- Utiliser GitFlow pour vos commits ;

- Pouvoir éditer les infos / caractéristiques d'un équipement dans la vue `Détail d'un équipement`. Persister ces changements.

## One more thing !

Bon courage !!!

