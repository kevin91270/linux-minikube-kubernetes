#!/bin/bash
sudo kubectl apply -f ./ns-vuejs-site.yml
sudo kubectl apply -f ./service-vuejs.yml
sudo kubectl apply -f ./service-node.yml
sudo kubectl apply -f ./service-mongo.yml
sudo kubectl apply -f ./dp-vuejs.yml
sudo kubectl apply -f ./dp-node.yml
sudo kubectl apply -f ./dp-mongo.yml
sudo kubectl apply -f ./pv-claim.yml
sudo kubectl apply -f ./pv-volume.yml

sudo kubectl get services -n eval
sudo chmod +x kubernetes.sh
sudo ./kubernetes.sh