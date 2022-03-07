#!/bin/bash


# deploy an NGINX ingress controller
git clone https://github.com/scriptcamp/nginx-ingress-controller.git
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.1/deploy/static/provider/cloud/deploy.yaml