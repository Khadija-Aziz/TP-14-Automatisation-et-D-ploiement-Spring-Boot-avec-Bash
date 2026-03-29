#!/bin/bash
# Création du nom de fichier avec la date actuelle
DATE=$(date +%Y%m%d_%H%M%S)
FILENAME="logs_$DATE.tar.gz"

echo "Archivage des logs dans $FILENAME..."
# tar -czf : c=créer, z=compresser (gzip), f=fichier
tar -czf "$FILENAME" logs/

echo "Archivage terminé. Fichier créé à la racine du projet."