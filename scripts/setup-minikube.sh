#!/bin/bash

# avvia Minikube
minikube start --driver=kvm2

# crea/sovrascrive le risorse nel cluster
kubectl apply -f ../k8s-resources/tls-secret.yaml
kubectl apply -f ../k8s-resources/nginx-configmap.yaml
kubectl apply -f ../k8s-resources/portfolio-deployment.yaml
echo "Attendi qualche secondo per il deployment dei Pod..."
sleep 30

kubectl apply -f ../k8s-resources/portfolio-service.yaml

# ottieni l'url per raggiungere il portfolio
echo "Servizio pronto, puoi vedere il portfolio al seguente link:"
minikube service portfolio-service --url --https | grep 30443



