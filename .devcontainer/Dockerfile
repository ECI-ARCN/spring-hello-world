# Usar la imagen base de Java
FROM mcr.microsoft.com/devcontainers/java:17

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Instalar Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Configurar el entorno de desarrollo
RUN apt-get clean && rm -rf /var/lib/apt/lists/*