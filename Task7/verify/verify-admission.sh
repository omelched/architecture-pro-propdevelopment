#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/master/deploy/gatekeeper.yaml
kubectl apply -f ./Task7/Namespaces.yaml
kubectl apply -f ./Task7/gatekeeper/constraint-templates/privileged.yaml
kubectl apply -f ./Task7/gatekeeper/constraint-templates/hostpath.yaml
kubectl apply -f ./Task7/gatekeeper/constraint-templates/runasnonroot.yaml
kubectl apply -f ./Task7/gatekeeper/constraints/privileged.yaml
kubectl apply -f ./Task7/gatekeeper/constraints/hostpath.yaml
kubectl apply -f ./Task7/gatekeeper/constraints/runasnonroot.yaml


