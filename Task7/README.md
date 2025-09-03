# Задание 7

## проверка PodSecurity: restricted

```
user@omelched-MacBook ~/C/y/architecture-pro-propdevelopment (master⚡️) >  ./Task7/verify/validate-security.sh
Error from server (Forbidden): error when creating "./Task7/insecure-manifests/01-privileged-pod.yaml": pods "pod-privileged-1" is forbidden: violates PodSecurity "restricted:v1.33": privileged (container "nginx" must not set securityContext.privileged=true), allowPrivilegeEscalation != false (container "nginx" must set securityContext.allowPrivilegeEscalation=false), unrestricted capabilities (container "nginx" must set securityContext.capabilities.drop=["ALL"]), runAsNonRoot != true (pod or container "nginx" must set securityContext.runAsNonRoot=true), seccompProfile (pod or container "nginx" must set securityContext.seccompProfile.type to "RuntimeDefault" or "Localhost")
Error from server (Forbidden): error when creating "./Task7/insecure-manifests/02-hostpath-pod.yaml": pods "pod-privileged-2" is forbidden: violates PodSecurity "restricted:v1.33": allowPrivilegeEscalation != false (container "nginx" must set securityContext.allowPrivilegeEscalation=false), unrestricted capabilities (container "nginx" must set securityContext.capabilities.drop=["ALL"]), restricted volume types (volume "host-data-volume" uses restricted volume type "hostPath"), runAsNonRoot != true (pod or container "nginx" must set securityContext.runAsNonRoot=true), seccompProfile (pod or container "nginx" must set securityContext.seccompProfile.type to "RuntimeDefault" or "Localhost")
Error from server (Forbidden): error when creating "./Task7/insecure-manifests/03-root-user-pod.yaml": pods "pod-privileged-3" is forbidden: violates PodSecurity "restricted:v1.33": allowPrivilegeEscalation != false (container "nginx" must set securityContext.allowPrivilegeEscalation=false), unrestricted capabilities (container "nginx" must set securityContext.capabilities.drop=["ALL"]), runAsNonRoot != true (pod or container "nginx" must set securityContext.runAsNonRoot=true), runAsUser=0 (container "nginx" must not set runAsUser=0), seccompProfile (pod or container "nginx" must set securityContext.seccompProfile.type to "RuntimeDefault" or "Localhost")
pod/pod-secure-1 created
pod/pod-secure-2 created
pod/pod-secure-3 created
```

## gatekeeper
```
user@omelched-MacBook ~/C/y/architecture-pro-propdevelopment (master⚡️) >  ./Task7/verify/verify-admission.sh
namespace/gatekeeper-system unchanged
resourcequota/gatekeeper-critical-pods unchanged
customresourcedefinition.apiextensions.k8s.io/assign.mutations.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/assignimage.mutations.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/assignmetadata.mutations.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/configpodstatuses.status.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/configs.config.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/connectionpodstatuses.status.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/connections.connection.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/constraintpodstatuses.status.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/constrainttemplatepodstatuses.status.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/constrainttemplates.templates.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/expansiontemplate.expansion.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/expansiontemplatepodstatuses.status.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/modifyset.mutations.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/mutatorpodstatuses.status.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/providers.externaldata.gatekeeper.sh configured
customresourcedefinition.apiextensions.k8s.io/syncsets.syncset.gatekeeper.sh configured
serviceaccount/gatekeeper-admin unchanged
role.rbac.authorization.k8s.io/gatekeeper-manager-role unchanged
clusterrole.rbac.authorization.k8s.io/gatekeeper-manager-role unchanged
rolebinding.rbac.authorization.k8s.io/gatekeeper-manager-rolebinding unchanged
clusterrolebinding.rbac.authorization.k8s.io/gatekeeper-manager-rolebinding unchanged
secret/gatekeeper-webhook-server-cert unchanged
service/gatekeeper-webhook-service unchanged
deployment.apps/gatekeeper-audit unchanged
deployment.apps/gatekeeper-controller-manager unchanged
poddisruptionbudget.policy/gatekeeper-controller-manager configured
mutatingwebhookconfiguration.admissionregistration.k8s.io/gatekeeper-mutating-webhook-configuration configured
validatingwebhookconfiguration.admissionregistration.k8s.io/gatekeeper-validating-webhook-configuration configured
constrainttemplate.templates.gatekeeper.sh/disallowprivilegedpods created
constrainttemplate.templates.gatekeeper.sh/disallowhostpath unchanged
constrainttemplate.templates.gatekeeper.sh/disallowrunroot created
disallowprivilegedpods.constraints.gatekeeper.sh/disallowprivilegedpods created
disallowhostpath.constraints.gatekeeper.sh/disallowhostpath configured
disallowrunroot.constraints.gatekeeper.sh/disallowrunroot created
```