# k8s-portfolio

This project deploys a static portfolio (HTML/CSS/JS) on a local Kubernetes cluster using Minikube, featuring:
- **NGINX** as web server
- **git-sync** to synchronize files from GitHub
- **HTTPS** with self-signed certificates
- Local LoadBalancer service for external access

## Key Features
- Automatic deployment from public GitHub repo
- HTTPS
- Content auto-updating

## Required
- minikube v1.36.0
- kubectl 
- kvm2 driver

## Info

In my scenario mikikube and kubectl have been installed in an Ubuntu 24.04.2 VM virtualized with VMware Workstation. **All you need to do to see the portfolio:**

- git clone https://github.com/your-username/k8s-portfolio.git
- cd k8s-portfolio
- ./scripts/setup-minikube.sh

You can see a cluster overview with **minikube dashboard** where you should see the following resources:

- Deployment: portfolio-deployment 
- ReplicaSet: portfolio-deployment-(pod-template-hash)
- Pods: portfolio-(pod-template-hash)-(random-string)
- Services: portfolio-service
- ConfigMaps: nginx-config
- Secrets: tls-secret 

## Architecture

![k8s-portfolio](/architecture/k8s-portfolio.png)