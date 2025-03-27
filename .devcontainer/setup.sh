#!/bin/bash

# Actualizar paquetes
apt-get update

# Instalar Node.js (requerido por Heroku CLI)
if ! node -v &>/dev/null; then
    echo "Instalando Node.js..."
    apt-get install -y nodejs npm
else
    echo "Node.js ya está instalado."
fi

# Instalar Heroku CLI
curl https://cli-assets.heroku.com/install.sh | sh

# Instalar Maven
if ! mvn -version &>/dev/null; then
    echo "Instalando Maven..."
    apt-get update && apt-get install -y maven
else
    echo "Maven ya está instalado."
fi

# Instalar otras dependencias necesarias
apt-get install -y jq unzip

echo "Configuración del entorno completada."
