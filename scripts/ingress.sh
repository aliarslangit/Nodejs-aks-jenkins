#!/bin/bash


# deploy an NGINX ingress controller

helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install ingress-nginx nginx-stable/nginx-ingress
helm install ingress-nginx nginx-stable/nginx-ingress --set rbac.create=true
