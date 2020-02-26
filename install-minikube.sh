#!/bin/bash
sudo curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
sudo curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mkdir -p /usr/local/bin/ && sudo install minikube /usr/local/bin/ && sudo minikube start --vm-driver=none
