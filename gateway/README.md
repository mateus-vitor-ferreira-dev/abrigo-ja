# API Gateway

Porta única de entrada. Roteia para os BFFs e, quando fizer sentido, direto para serviços de
domínio.

```
gateway/
├── config/       regras de roteamento (declarativas, se a tecnologia permitir)
├── src/          código próprio (filtros, autenticação, rate limiting)
└── Dockerfile
```

Responsabilidades a atribuir explicitamente (a rubrica cobra a lista, não só a existência do
gateway): autenticação, rate limiting, agregação, roteamento por versão, CORS.

As regras aqui precisam **casar com o Ingress** de `infra/k8s/ingress/` — a Parte 3 pede que se
evidencie a relação entre o gateway routing projetado na Parte 2 e o Ingress do Kubernetes.

Projeto e justificativa: `docs/arquitetura/gateway.md`.
