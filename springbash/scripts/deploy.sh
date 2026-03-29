#!/bin/bash
echo "Compilation..."
./mvnw clean package -DskipTests
echo "Lancement du JAR..."
mkdir -p logs
nohup java -jar target/*.jar > logs/app.log 2>&1 &
echo "Deploiement fini."