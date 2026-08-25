# Kubernetes

Pastas espelhando os itens avaliados na Parte 3 — facilita a arguição e a correção.

| Pasta | Conteúdo | Peso na Parte 3 |
|---|---|---|
| `namespace/` | Namespace do projeto | — |
| `configmaps/` | Toda configuração não sensível, externalizada | 15% (com secrets) |
| `secrets/` | **Templates** de Secret, sem valor real versionado | 15% (com configmaps) |
| `deployments/` | Um Deployment por serviço, com réplicas definidas | 20% (com services) |
| `services/` | Services para comunicação interna | 20% (com deployments) |
| `ingress/` | Roteamento externo, espelhando o gateway routing da Parte 2 | 15% |
| `volumes/` | PVC/PV para persistência dos bancos | — |

**Credencial em código-fonte zera o item de ConfigMaps e Secrets.** Versionar apenas o template
do Secret (com `stringData` vazio ou placeholder) e aplicar o valor real via `kubectl create
secret` ou `.env` local, nunca no repositório.

Ambiente local aceito: Minikube, kind, k3s ou Docker Desktop — registrar em
`docs/parte-3-containers/` qual foi usado e como reproduzir.

A demonstração de escalabilidade (aumentar réplicas e evidenciar distribuição de carga) tem
evidências em `docs/parte-3-containers/evidencias/`.
