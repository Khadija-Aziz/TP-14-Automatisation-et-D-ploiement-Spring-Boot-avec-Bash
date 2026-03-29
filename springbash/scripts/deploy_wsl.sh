#!/bin/bash

# ---  Définition des variables ---
USER="abdali"
SERVER="192.168.56.101"
DEST="C:/Users/abdali/Desktop/"  # Le dossier sur  VM Windows 10

echo "--- DÉBUT DE L'AUTOMATISATION CI/CD ---"

# ---  Création du dossier à distance ---
# On utilise SSH pour dire à la VM de créer le dossier s'il n'existe pas
echo "Préparation du dossier distant..."
ssh $USER@$SERVER "if not exist $DEST mkdir $DEST"

# ---  Transfert du fichier JAR via SCP ---
# C'est ici que la magie du déploiement opère
echo "Transfert de l'application vers le serveur $SERVER..."
scp target/*.jar $USER@$SERVER:$DEST/springbash.jar

echo "--- DÉPLOIEMENT TERMINÉ AVEC SUCCÈS ! ---"
echo "Le fichier est disponible sur la VM dans $DEST"