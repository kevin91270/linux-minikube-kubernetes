#!/bin/bash
sudo minikube dashboard
sudo kubectl proxy --address='0.0.0.0' --disable-filter=true