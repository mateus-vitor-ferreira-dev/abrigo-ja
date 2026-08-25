# Infraestrutura

```
infra/
├── compose/     arquivos de apoio do Docker Compose (overrides, seeds, init de banco)
└── k8s/         manifestos do Kubernetes, agrupados pelos itens da rubrica
```

O `docker-compose.yml` fica na **raiz** do repositório, não aqui: a exigência é subir o sistema
completo com um único comando a partir do clone.

Os Dockerfiles ficam **junto de cada serviço**, não centralizados — cada um pertence ao código
que empacota e precisa ser próprio (Parte 3, 20% da nota da etapa).
