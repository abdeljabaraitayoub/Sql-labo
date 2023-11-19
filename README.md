# Système de Gestion des Ressources de la Société SQLI 🚀

## Aperçu du Projet

Le Système de Gestion des Ressources de la Société SQLI a été conçu pour faciliter la gestion efficace des utilisateurs, des squads, des projets et des ressources au sein de l'organisation. Le système permet à différents squads de développement de suivre et de gérer des ressources allant des compétences humaines aux outils techniques, assurant ainsi le succès de leurs projets respectifs.

## Conception de la Base de Données 🗄️

La base de données comprend les entités suivantes :

- **Utilisateur :** Identifié par un UserID unique, contenant des informations telles que le nom d'utilisateur et l'e-mail.
- **Squad :** Défini par un SquadID unique, associé à un projet spécifique (via ProjectID) et dirigé par un utilisateur leader (via UserID).
- **Projet :** Chaque projet a un ProjectID unique et est caractérisé par un nom, une description et des dates de début/fin.
- **Ressource :** Identifiée par un ResourceID, liée à une catégorie (via CategoryID) et à une sous-catégorie (via SubcategoryID). Peut être associée à un squad (via SquadID) et/ou un projet (via ProjectID).
- **Catégorie et Sous-catégorie :** Utilisées pour classer les ressources de manière organisée, chaque sous-catégorie étant associée à une catégorie spécifique.

## Histoires d'Utilisateurs 📜

1. **Administrateur Système :**

   - En tant qu'administrateur, je souhaite créer de nouveaux utilisateurs dans la base de données pour maintenir une liste actualisée des membres de l'équipe.

2. **Leader de Squad :**

   - En tant que leader de squad, je veux créer un nouveau squad, spécifier le nom et ajouter des membres pour former rapidement des équipes dédiées à des projets spécifiques.

3. **Chef de Projet :**

   - En tant que chef de projet, je veux créer un nouveau projet en fournissant des détails tels que le nom, la description et les dates, pour définir clairement les paramètres de chaque projet.

4. **Membre de Squad :**

   - En tant que membre de squad, je veux voir la liste des projets pour lesquels mon squad est responsable pour comprendre les projets actuels et suivre les responsabilités.

5. **Responsable des Ressources :**

   - En tant que responsable des ressources, je veux ajouter une nouvelle ressource en spécifiant son nom, sa catégorie, sa sous-catégorie et son association éventuelle à un squad ou à un projet, pour gérer efficacement les ressources disponibles.

6. **Développeur Fullstack :**

   - En tant que développeur Fullstack, je veux pouvoir mettre à jour les détails d'un utilisateur, d'un squad, d'un projet ou d'une ressource existante pour ajuster les informations en fonction des évolutions.

7. **Responsable des Catégories et Sous-catégories :**

   - En tant que responsable des catégories et sous-catégories, je souhaite créer de nouvelles catégories et sous-catégories pour classer les ressources et organiser efficacement la base de données.

8. **Analyste Système :**
   - En tant qu'analyste système, je veux créer un diagramme de classe UML pour représenter visuellement les entités, ainsi que leurs relations et attributs associés, pour une compréhension claire de la structure de la base de données.

## Diagrammes 📊

- **Diagramme Entité-Relation (ERD):**

 ![Alt text](https://i.ibb.co/DVhKTmN/ERD.jpg)
 
- **Diagramme de Classe UML :**
  ![Alt text](https://i.ibb.co/GvKSJhr/Class-diagram.jpg)

- **Diagramme de cas d'utilisateur :**
  ![Alt text](https://i.ibb.co/YpDk1CM/uses-cases-diagram.jpg)

## Utilisation ⚙️

Pour utiliser le Système de Gestion des Ressources de la Société SQLI, suivez ces étapes :

1. Clonez le dépôt sur votre machine locale.
2. Configurez la base de données à l'aide des scripts SQL fournis.
3. Lancez l'application et accédez-y via l'interface fournie.
4. Suivez les histoires d'utilisateurs pour effectuer différentes actions dans le système.

## Contributeurs 👥

- [Votre Nom]
- [Contributeur 2]
- [Contributeur 3]

## Licence 📄

Ce projet est sous licence [Nom de la Licence] - consultez le fichier [LICENSE.md](LICENSE.md) pour plus de détails.
