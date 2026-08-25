# Estrutura do repositório

Mapa das pastas e a que item da avaliação cada uma responde.

```
.
├── README.md                      startup, problema, integrantes, como executar   [P1: 10%]
├── CONTRIBUTING.md                fluxo de branches, commits e review              [transversal]
├── ESTRUTURA.md                   este arquivo
├── docker-compose.yml             sobe o sistema completo com um comando          [P3: 15%]
├── .env.example                   configuração externalizada, sem valores reais    [P3: 15%]
│
├── docs/
│   ├── parte-1-concepcao/         problema, referências, impacto, pitch           [P1]
│   ├── arquitetura/               decomposição, REST, gateway, BFF, dados,
│   │                              SAGA, CQRS — um arquivo por item avaliado       [P2]
│   ├── api/                       contratos OpenAPI                               [P2: 15%]
│   ├── diagramas/                 componentes, comunicação, sequências da saga    [P2]
│   ├── adr/                       decisões e justificativas frente à alternativa  [contínuo]
│   ├── parte-3-containers/        vídeo, como subir, escalabilidade               [P3]
│   ├── parte-4-llm/               RAG, LangChain, resiliência, latência e custo   [P4]
│   └── apresentacoes/             slides de cada etapa
│
├── services/                      SÓ os 4 de domínio — contar as pastas daqui
│   ├── familias/                  ┐                                              [P2: 15%]
│   ├── abrigos/                   │ um banco próprio cada, instâncias separadas
│   ├── suprimentos/               │
│   └── logistica/                 ┘
│
├── platform/                      serviços de APOIO — não contam como domínio
│   ├── acolhimento-saga/          orquestrador — só se a saga for orquestrada     [P2: 20%]
│   └── assistente/                RAG + LangChain + resiliência do LLM            [P4: 45%]
│
├── gateway/                       porta única, regras de roteamento               [P2: 10%]
├── bff/
│   ├── bff-painel/                coordenação: visão agregada                     ┐ [P2: 10%]
│   └── bff-campo/                 agente: payload mínimo                          ┘
├── clients/
│   ├── painel-web/                cliente 1                                       [mínimo: 2]
│   └── app-campo/                 cliente 2
│
├── infra/
│   ├── compose/                   overrides, seeds, init de banco                 [P3: 15%]
│   └── k8s/                       manifestos agrupados pelos itens da rubrica     [P3: 60%]
│       ├── namespace/  configmaps/  secrets/
│       └── deployments/  services/  ingress/  volumes/
│
├── scripts/                       verificação de autoria, seed, demo da saga
└── .github/                       template de PR e CI opcional                    [transversal]
```

## Quatro regras que a estrutura sustenta

**Dockerfile mora junto do serviço, não em `infra/`.** Ele empacota aquele código e precisa ser
próprio — imagem de terceiro sem customização não pontua. Centralizá-los desconecta o
Dockerfile do código que ele constrói.

**`services/` responde à contagem sozinha.** O mínimo exigido são 4 serviços de domínio, e é
isso que a pasta contém — nem um a mais. Orquestrador de saga e assistente de LLM são serviços,
mas não são serviços *de domínio*; misturados aos quatro, obrigavam quem olha a árvore a abrir um
README para saber quais contam. `platform/` responde antes da pergunta.

**`db/migrations/` mora dentro de cada serviço.** Não existe pasta `database/` na raiz: isso
convidaria ao schema compartilhado, exatamente o que *database per service* proíbe. Nenhum
serviço lê o banco de outro — só API ou evento.

**Um arquivo de documentação por item da rubrica.** `docs/arquitetura/` tem sete arquivos
porque a Parte 2 tem sete critérios. Documento único de arquitetura torna caro provar que cada
critério foi atendido, e a correção é por critério.

## O que ainda não existe e por quê

| Ausente | Aparece em |
|---|---|
| `docker-compose.yml`, Dockerfiles | Parte 3 — a Parte 2 não exige sistema em execução |
| Manifestos dentro de `infra/k8s/*` | Parte 3 |
| Código em `services/*/src` e `platform/*/src` | a partir da Parte 2 (protótipo) / Parte 4 (funcional) |
| `platform/acolhimento-saga/` pode ser removida | se a decisão for saga coreografada (ADR-0002) |
