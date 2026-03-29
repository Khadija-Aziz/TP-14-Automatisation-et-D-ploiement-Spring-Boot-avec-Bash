#!/bin/bash
echo "Arret de l'application sur le port 8085..."
# On cherche le PID qui utilise le port 8085
PID=$(netstat -ano | grep :8085 | awk '{print $5}' | head -n 1)

if [ -z "$PID" ]; then
  echo "Aucun processus trouve sur le port 8085."
else
  taskkill //F //PID $PID
  echo "Processus $PID arrete."
fi