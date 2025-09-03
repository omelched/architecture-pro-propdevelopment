#!/bin/bash

mkdir -p ~/.minikube/files/etc/ssl/certs
minikube delete
cat <<EOF > ~/.minikube/files/etc/ssl/certs/audit-policy.yaml
apiVersion: audit.k8s.io/v1
kind: Policy
rules:
  - level: RequestResponse
    verbs: []
    resources:
      - group: ""
        resources:
          [
            "pods",
            "secrets",
            "configmaps",
            "serviceaccounts",
            "roles",
            "rolebindings",
          ]
  - level: Metadata
    resources:
      - group: ""
        resources: ["*"]

EOF

minikube start  \
    --extra-config=apiserver.audit-policy-file=/etc/ssl/certs/audit-policy.yaml   \
    --extra-config=apiserver.audit-log-path=-