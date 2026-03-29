#!/bin/bash
echo "Demarrage de l'application..."
mkdir -p logs
nohup ./mvnw spring-boot:run > logs/app.log 2>&1 &
echo "Application demarree (PID : $!)"