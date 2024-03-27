# La Mise en Place

Afin de démarrer le projet, exécutez les commandes suivantes :
- la commande ```docker compose up``` pour build toutes les images, créer les containers et donc les lancés.
- la commande ```docker compose down``` pour arrêter tout les containers.

# Les Spécificités

## Vote

- Service: Vote 
- Objectif: Front-end du questionnaire.  
- Langage: Python, HTML, CSS  
- Services externes: Flask, Redis
- Identifiants: Besoin d'aucuns identifiants
- Port : 5000

## Result

- Service: Result
- Objectif: Front-end des résultats du questionnaire.  
- Langage: JavaScript, HTML, CSS  
- Services externes:  async, body-parser, cookie-parser, express, method-override, pg, socket.io, stoppable
- Identifiants: USER : postgres, PASSWORD : postgres, DB_HOST : db, DB_NAME : postgres
- Port : 4000

## Worker

- Service: Worker
- Objectif: Fait la liaison entre les services back-end Redis et PostgresSQL
- Langage: C#
- Service externe: StackExchange.Redis, Npgsql, Newtonsoft.Json
- Identifiants: Besoin d'aucuns identifiants

## Traefik

- Service: Traefik
- Objectif: Permet de déployer rapidement et facilement nos différents services dans notre environnement
- Langage: YAML
- Service externe: Vote, Result, Worker, Postgres et Redis
- Identifiants: Besoin d'aucuns identifiants
- Port : 8080