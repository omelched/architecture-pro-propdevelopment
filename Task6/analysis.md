# Отчёт по результатам анализа Kubernetes Audit Log

## Подозрительные события

1. Доступ к секретам:
   - Кто: minikube-user
   - Где: kube-system
   - Почему подозрительно: выполнялся list с большим limit. Нетипично ни для какого процесса деплоя получать список секретов. Типично - по известному ключу получать значение.

2. Привилегированные поды:
   - Кто: minikube-user
   - Комментарий: создание пода с securityContext:privileged:true

3. Использование kubectl exec в чужом поде:
   - Кто: minikube-user
   - Что делал: cat /etc/resolv.conf - получал конфигурацию службы доменных имен

4. Создание RoleBinding с правами cluster-admin:
   - не залогировано

5. Удаление audit-policy.yaml:
   - не залогировано

## Вывод

1. получение секретов не удалось - Error from server (Forbidden): secrets is forbidden: User "system:serviceaccount:secure-ops:monitoring" cannot list resource "secrets" in API group "" in the namespace "kube-system"
2. привелегированная пода создана
3. cat не выполнена потому что такого executable нет в поде - OCI runtime exec failed: exec failed: unable to start container process: exec: "cat": executable file not found in $PATH: unknown
4. удаление Policy провалилось с ошибкой - error: resource mapping not found for name: "" namespace: "" from "./Task6/audit-policy.yaml": no matches for kind "Policy" in version "audit.k8s.io/v1"
5. rolebinding создана - rolebinding.rbac.authorization.k8s.io/escalate-binding created
