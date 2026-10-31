# Image officielle Node.js (version LTS légère)
FROM node:20-alpine

# Définition du répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie des fichiers de dépendances
COPY package*.json ./

# Installation des dépendances
RUN npm install --only=production

# Copie du reste du code source
COPY . .

# Exposition du port
EXPOSE 3000

# Commande de démarrage
CMD ["node", "server.js"]