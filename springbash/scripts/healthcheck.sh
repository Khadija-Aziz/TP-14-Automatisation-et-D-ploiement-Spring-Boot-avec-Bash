#!/bin/bash
echo "Verification automatique du service..."

status=$(curl -s http://localhost:8085/actuator/health | grep -o "UP")

if [ "$status" == "UP" ]; then
  echo "REUSSITE : L'application est en ligne et fonctionnelle."
else
  echo "ERREUR : L'application ne repond pas ou est en erreur."
fi