FROM node:18-bullseye 
WORKDIR /app  
# Workdir creates a folder and cd inside it
COPY package*.json .
# package lock containes exact version of the packages
RUN npm install
COPY . .
EXPOSE 3000
CMD npm run start