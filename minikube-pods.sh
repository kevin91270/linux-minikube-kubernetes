#!/bin/bash
sudo kubectl apply -f ./ns-vuejs-site.yml
sudo kubectl apply -f ./service-vuejs.yml
sudo kubectl apply -f ./service-strapi.yml
sudo kubectl apply -f ./service-postgres.yml
sudo kubectl apply -f ./dp-vuejs.yml
sudo kubectl apply -f ./dp-strapi.yml
sudo kubectl apply -f ./dp-postgres.yml

sudo apt install gnupg2 pass
sudo apt-get update
sudo apt-get install postgresql-client

sudo docker login
sudo docker build -t kevin91270/vuejs-eval:001 .
sudo docker run --rm -P --name pg_test kevin91270/vuejs-eval:001
sudo docker push kevin91270/vuejs-eval:001

sudo docker ps

#psql -h localhost -p "" -d docker -U docker --password
# il faut verifier le port avec sudo docker ps