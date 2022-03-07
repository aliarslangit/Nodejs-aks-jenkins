#!/bin/bash




# Create a namespace for your ingress resources
kubectl create namespace ingress-basic

# Add the official stable repository
 helm repo add stable https://charts.helm.sh/stable

# Use Helm to deploy an NGINX ingress controller
helm install nginx-ingress stable/nginx-ingress \
    --namespace ingress-basic \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux
