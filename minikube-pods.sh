#!/bin/bash
sudo kubectl apply -f ./ns-vuejs-site.yml
sudo kubectl apply -f ./service-vuejs.yml
sudo kubectl apply -f ./service-strapi.yml
sudo kubectl apply -f ./service-postgres.yml
sudo kubectl apply -f ./dp-vuejs.yml
sudo kubectl apply -f ./dp-strapi.yml
sudo kubectl apply -f ./dp-postgres.yml