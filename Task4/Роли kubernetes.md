# Роли Kubernetes
## Неймспейсы

- logging
- secrets
- devOps
- clientServices
- consumerServices
- localServices

| Роль                                 | Права роли                                                                                    | Группы пользователей                                                 |
| ------------------------------------ | --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| Публикация сервисов clientServices   | Role(clientServices, create), Role(clientServices, update), Role(clientServices, patch)       | Сервисная УЗ агента DevOps (Jenkins)                                 |
| Публикация сервисов consumerServices | Role(consumerServices, create), Role(consumerServices, update), Role(consumerServices, patch) | Сервисная УЗ агента DevOps (Jenkins)                                 |
| Публикация сервисов localServices    | Role(localServices, create), Role(localServices, update), Role(localServices, patch)          | Сервисная УЗ агента DevOps (Jenkins)                                 |
| Сбор метрик подов кластера           | ClusterRole(get), ClusterRole(list), ClusterRole(watch)                                       | Сервисная УЗ стека ELK, Команда поддержки Kubernetes                 |
| Администратор кластера               | ClusterRole(create), ClusterRole(update), ClusterRole(patch)                                  | Команда поддержки Kubernetes                                         |
| Сбор метрик подов clientServices     | Role(clientServices, get), Role(clientServices, list), Role(clientServices, watch)            | Команда разработки clientServices, Команда DevOps clientServices     |
| Сбор метрик подов consumerServices   | Role(consumerServices, get), Role(consumerServices, list), Role(consumerServices, watch)      | Команда разработки consumerServices, Команда DevOps consumerServices |
| Сбор метрик подов localServices      | Role(localServices, get), Role(localServices, list), Role(localServices, watch)               | Команда разработки clientServices, Команда DevOps clientServices     |
| Чтение метрик                        | Role(logging, get), Role(logging, list), Role(logging, watch)                                 | Отдел разработки                                                     |
| Чтение секретов                      | Role(secrets, get), Role(secrets, list), Role(secrets, watch)                                 | Сервисная УЗ агента DevOps (Jenkins)                                 |
| Управление развертыванием            | Role(devOps, create), Role(devOps, update), Role(devOps, patch)                               | Команды DevOps                                                       |
| Управление секретами                 | Role(secrets, create), Role(secrets, update), Role(secrets, patch)                            | Команды DevOps                                                       |
