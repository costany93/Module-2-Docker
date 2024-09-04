FROM node 


WORKDIR /app

COPY package.json /app

RUN npm install

# cette commande nous permet d'avoir a build de notre application une copy de notre application dans notre container docker
COPY . /app 

ARG DEFAULT_PORT=80

# nous pouvons definir les variables d'environement dans projet ici on defini le pport d'ecoute
ENV PORT=${DEFAULT_PORT}

EXPOSE ${PORT}

# les volumes nous permettent de travailler avec des données utilisateurs du container vers le host(dans notre cas c'est notre machine persoclea)
#VOLUME [ "/app/feedback" ]

CMD [ "npm", "start" ]