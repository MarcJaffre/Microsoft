--------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Déploiement d'une imprimante réseau via une GPO </p>
--------------------------------------------------------------------------------------------------------------------------------------------
## I. Windows Server
### A. PREREQUIS
Une imprimante fonctionnelle et configurée en IPv4 statique et que le DNS pointe vers le serveur.
Il est nécessaire de télécharger le pilote de l’imprimante sur le serveur et penser à la compatibilité des systèmes d’exploitation. (W10/W11)
Faire attention à la compatibilité des builds (22h2,24h2…)

### B. ROLES
Il est nécessaire d’installer le rôle « Services d'impression et de numérisation de documents » sur le serveur.

#### 1. GESTION DE L’IMPRESSION
Ouvrir le panneau « Gestion de l’impression ».
#### 2. Pilotes
Aller dans l’onglet Pilotes puis faire clic droit « Ajouter un pilote ».

Sélectionner l’architecture prise en charge (x86, x64)

Choisir le pilote souhaite en allant dans « Disque Fourni ».

Cliquer sur « Parcourir » et Sélectionner le fichier « .inf » dans le dossier du pilote et faire « OK ».

Exemple : HP Envy 5540

#### 3. Imprimantes
Aller dans « Imprimantes » puis clic droit « Ajouter une imprimante ».

Sélectionne « Ajouter une imprimante TCP/IP … ».

Sélectionner « Périphérique TCP/IP » puis indiquer l’IP de l’imprimante.

Le nom de l’imprimante est important, car côté client se sera ce qui sera visible dans son logiciel.
 

 


Clic droit sur l’imprimante puis « Répertorier dans l’annuaire ».
Ceci permet de la trouver plus facilement côté client si besoin.
 

 
3.3.3	Préférence de l’imprimante
Sélectionner l’imprimante puis sélectionner Propriétés.
 
 

 

 
4	GUID DE CLASSE
Pour autoriser l’installation de la classe du pilote, il faut récupérer son GUID.
Sur un poste client, installer l’imprimante manuellement.
Une fois installé et fonctionnel, aller dans :
-	Gestionnaire de périphériques
-	Déployé Files d’attente à l’impression
-	Clic droit sur l’imprimante
-	Propriétés
-	Onglet Détails
-	Sélectionner « GUID de classe »
-	Clic droit sur la valeur puis copier

 

Le GUID est {1ed2bbf9-11f0-4084-b21f-ad83a8e6dcdc}

 
5	STRATEGIE DE GROUPE 
5.1	ORDINATEUR
5.1.1	Registre
Aller dans Préférences > Paramètres Windows > Registre.

Action	Mettre à jour
Ruche	HKEY_LOCAL_MACHINE
Chemin de la clé	Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint
Nom de la valeur	RestrictDriverInstallationToAdministrators
Type de valeur	REG_DWORD
Données de la valeur	00000000
Base	Hexadécimal

 

 
5.1.2	Imprimantes
Aller dans Stratégies > Modèles d'administration > Imprimantes
5.1.3	Restrictions pointer et imprimer
Cocher la case Activé
Cocher « Les utilisateurs ne peuvent pointer et imprimer que sur ces serveurs ».
Indiquez le nom complet du serveur d'impression : (Exemple : SRV-ADDS-01.lan.fr)
Le pilote s'installe silencieusement : Ne pas afficher l'avertissement ou l'invite d'élévation.
Le pilote se mette à jour silencieusement : Ne pas afficher l'avertissement ou l'invite d'élévation.
5.1.4	Autoriser uniquement les serveurs d'impression approuvés
Indiquer le nom complet de votre serveur d'impression.
Exemple : SRV-ADDS-01.lan.fr

5.1.5	Autoriser uniquement certaines classes de pilotes
Aller dans Stratégies > Modèles d'administration > Système > Installation de pilotes.
Sélectionner « Autoriser les non-administrateurs à installer des pilotes pour ces classes d'installation de périphériques »
Coller votre GUID par ligne.
 


5.2	UTILISATEUR
5.2.1	Déployer l'imprimante
Aller dans Stratégies > Préférences > Paramètres du Panneau de configuration > Imprimantes.
 

 
6	CLIENT
6.1	EXEMPLE DE DEPLOIEMENT AUTOMATIQUE
L’imprimante va se déployer à l’ouverture de la session si la GPO si l’utilisateurs est concernés.
 


 
6.2	EXEMPLE DE DEPLOIEMENT PAR UN TECHNICIEN
La méthode suivante permet l’installation de l’imprimante manuellement en effectuant une recherche via l’AD.
On pourrait ne pas avoir besoin d’une GPO si l’imprimante est sur très peu de poste ou si on souhaite déployé l’imprimante par utilisateur.
 
 

 



7	ACTIVE DIRECTORY (OBJET)
7.1.1	Vérifier si l’objet existe
Aller dans « Utilisateurs et ordinateurs Active Directory ».
Clic droit sur le domaine puis Rechercher
 
 



