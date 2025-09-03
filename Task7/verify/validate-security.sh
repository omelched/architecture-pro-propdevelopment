#!/bin/bash

kubectl apply -f ./Task7/insecure-manifests/01-privileged-pod.yaml
kubectl apply -f ./Task7/insecure-manifests/02-hostpath-pod.yaml
kubectl apply -f ./Task7/insecure-manifests/03-root-user-pod.yaml
kubectl apply -f ./Task7/secure-manifests/01-privileged-pod.yaml
kubectl apply -f ./Task7/secure-manifests/02-hostpath-pod.yaml
kubectl apply -f ./Task7/secure-manifests/03-root-user-pod.yaml