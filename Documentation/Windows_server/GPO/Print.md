--------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Déploiement d'une imprimante réseau via une GPO </p>
--------------------------------------------------------------------------------------------------------------------------------------------
## I. Windows Server
### A. PREREQUIS
Une imprimante fonctionnelle et configurée en IPv4 statique et que le DNS pointe vers le serveur.

Il est nécessaire de télécharger le pilote de l’imprimante sur le serveur et penser à la compatibilité des systèmes d’exploitation. (W10/W11)

Faire attention à la compatibilité des builds (22h2,24h2…)

<br />

### B. ROLES
Il est nécessaire d’installer le rôle « Services d'impression et de numérisation de documents » sur le serveur.

#### 1. GESTION DE L’IMPRESSION
Ouvrir le panneau « Gestion de l’impression ».
#### 2. Pilotes
Aller dans l’onglet Pilotes puis faire clic droit « Ajouter un pilote ».

![image](https://github.com/user-attachments/assets/fbff3b60-08f0-4676-8361-1cea32cad361)

Sélectionner l’architecture prise en charge (x86, x64)

![image](https://github.com/user-attachments/assets/95184903-9a4e-43de-bd26-9d0bd0e4954d)

Choisir le pilote souhaite en allant dans « Disque Fourni ».

![image](https://github.com/user-attachments/assets/a9780edc-e98a-435e-8698-22bf1644c989)


Cliquer sur « Parcourir » et Sélectionner le fichier « .inf » dans le dossier du pilote et faire « OK ».

![image](https://github.com/user-attachments/assets/30f3bc60-4228-4fb1-bdaf-0098c0833122)

Exemple : HP Envy 5540

![image](https://github.com/user-attachments/assets/ff38b10e-e848-42c8-8e34-638f8c5fe606)

![image](https://github.com/user-attachments/assets/2a255f1e-a7d7-41c2-bd90-a8c86dc22ea7)


#### 3. Imprimantes
Aller dans « Imprimantes » puis clic droit « Ajouter une imprimante ».

![image](https://github.com/user-attachments/assets/f6754108-6409-49af-a1af-98ef13adae44)

Sélectionne « Ajouter une imprimante TCP/IP … ».

![image](https://github.com/user-attachments/assets/e043ec86-d037-4da7-ac47-ed1a01931715)

Sélectionner « Périphérique TCP/IP » puis indiquer l’IP de l’imprimante.

![image](https://github.com/user-attachments/assets/6fd03581-6b50-4368-a1bc-ea0ad071cae7)

Le nom de l’imprimante est important, car côté client se sera ce qui sera visible dans son logiciel.

![image](https://github.com/user-attachments/assets/4d15014e-6d9a-4488-9cb0-29a1396526d1)

![image](https://github.com/user-attachments/assets/880a7448-9893-408b-b1b9-64e0b98e7456)


Clic droit sur l’imprimante puis « Répertorier dans l’annuaire ». 

![image](https://github.com/user-attachments/assets/8ed345ed-ce89-4704-8bdf-0183d8d5a29b)

Ceci permet de la trouver plus facilement côté client si besoin.
 
#### 4. Préférence de l’imprimante
Sélectionner l’imprimante puis sélectionner Propriétés.

![image](https://github.com/user-attachments/assets/1d0024bd-c7d9-42ea-94a1-e362c5042154)

![image](https://github.com/user-attachments/assets/5d908dd7-4c8b-4b52-89a1-ce1abd8d6e6a)

![image](https://github.com/user-attachments/assets/bdd53aa8-b449-4144-b551-1e134c5c7de9)

<br />

### C. GUID DE CLASSE
Pour autoriser l’installation de la classe du pilote, il faut récupérer son GUID.

Sur un poste client, installer l’imprimante manuellement.

Une fois installé et fonctionnel, aller dans :
- Gestionnaire de périphériques
- Déployé Files d’attente à l’impression
- Clic droit sur l’imprimante
- Propriétés
- Onglet Détails
- Sélectionner « GUID de classe »
- Clic droit sur la valeur puis copier

Le GUID est **{1ed2bbf9-11f0-4084-b21f-ad83a8e6dcdc}**

![image](https://github.com/user-attachments/assets/668d31bd-2f92-4df5-9a2c-e5feb6d4a135)


<br />
 
### D. STRATEGIE DE GROUPE
#### 1.ORDINATEUR
##### A. Registre
Aller dans Préférences > Paramètres Windows > Registre. 

| Action	       | Ruche             	| Chemin de la clé                                             | Nom de la valeur                           | Type de valeur | Données de la valeur | Base        |
| ------------- | ------------------ | ------------------------------------------------------------ | ------------------------------------------ | -------------- | -------------------- | ----------- | 
| Mettre à jour | HKEY_LOCAL_MACHINE | Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint| RestrictDriverInstallationToAdministrators |	REG_DWORD      | 00000000             | Hexadécimal |
	
##### B. Imprimantes
Aller dans Stratégies > Modèles d'administration > Imprimantes

Restrictions pointer et imprimer
> Cocher la case Activé
> 
> Cocher « Les utilisateurs ne peuvent pointer et imprimer que sur ces serveurs ».
> 
> Indiquez le nom complet du serveur d'impression : (Exemple : SRV-ADDS-01.lan.fr)
> 
> Le pilote s'installe silencieusement : Ne pas afficher l'avertissement ou l'invite d'élévation.
> 
> Le pilote se mette à jour silencieusement : Ne pas afficher l'avertissement ou l'invite d'élévation.
> 
> Autoriser uniquement les serveurs d'impression approuvés
> 
> Indiquer le nom complet de votre serveur d'impression.
> 
> Exemple : SRV-ADDS-01.lan.fr

##### C. Autoriser uniquement certaines classes de pilotes
Aller dans Stratégies > Modèles d'administration > Système > Installation de pilotes.

Sélectionner « Autoriser les non-administrateurs à installer des pilotes pour ces classes d'installation de périphériques ».

Coller votre GUID par ligne.
 

#### 2. UTILISATEUR
Déployer l'imprimante
Aller dans Stratégies > Préférences > Paramètres du Panneau de configuration > Imprimantes.


#### 3.	CLIENT
6.1	EXEMPLE DE DEPLOIEMENT AUTOMATIQUE
L’imprimante va se déployer à l’ouverture de la session si la GPO si l’utilisateurs est concernés.
 
 
#### 4. EXEMPLE DE DEPLOIEMENT PAR UN TECHNICIEN
La méthode suivante permet l’installation de l’imprimante manuellement en effectuant une recherche via l’AD.
On pourrait ne pas avoir besoin d’une GPO si l’imprimante est sur très peu de poste ou si on souhaite déployé l’imprimante par utilisateur.
 
#### 5. ACTIVE DIRECTORY (OBJET)
7.1.1	Vérifier si l’objet existe
Aller dans « Utilisateurs et ordinateurs Active Directory ».
Clic droit sur le domaine puis Rechercher
 
 



