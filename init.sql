CREATE TABLE IF NOT EXISTS Etudiant (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100) UNIQUE
    );

INSERT INTO clients (nom,prenom,email) VALUES ('Dupont','Jean', 'jean@example.com');