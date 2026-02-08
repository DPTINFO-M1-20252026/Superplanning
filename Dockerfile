# On part de l'image officielle mentionnée
FROM postgres:15.2

# Définition des variables d'environnement (équivalent aux -e)
ENV POSTGRES_USER=admin

#IMPORTANT à modifier par un docker secret par la suite
ENV POSTGRES_PASSWORD=secret

ENV POSTGRES_DB=mydatabase

# Copie du script d'initialisation dans le répertoire approprié de l'image
COPY init.sql /docker-entrypoint-initdb.d/

#docker build --file Dockerfile -t postgres_edt .
#docker run -d --name postgres-db -p 5432:5432 postgres_edt
#docker container start postgres-db