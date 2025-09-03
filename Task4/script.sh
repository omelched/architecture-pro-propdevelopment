#!/bin/bash

kubectl apply -f Task4/Roles.yaml 
kubectl apply -f Task4/ClusterRoles.yaml 
kubectl apply -f Task4/RoleBindings.yaml 
kubectl apply -f Task4/ClusterRoleBindings.yaml 