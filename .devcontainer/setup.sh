#!/bin/bash

# Instalar Heroku CLI
curl https://cli-assets.heroku.com/install.sh | sh

# Instalar Maven
apt-get update && apt-get install -y maven

# Instalar Gradle
apt-get install -y gradle

# Instalar otras dependencias necesarias
apt-get install -y jq unzip

echo "Configuración del entorno completada."
