# Documentação

Índice da documentação técnica. A estrutura acompanha as etapas da disciplina — cada pasta
corresponde a um bloco de itens avaliados.

| Pasta | Conteúdo | Etapa |
|---|---|---|
| [`parte-1-concepcao/`](./parte-1-concepcao) | Problema, referências, impacto social, roteiro do pitch | Parte 1 |
| [`arquitetura/`](./arquitetura) | Decomposição, REST, gateway, BFF, dados, SAGA, CQRS | Parte 2 |
| [`api/`](./api) | Contratos OpenAPI de cada serviço | Parte 2 |
| [`diagramas/`](./diagramas) | Componentes, comunicação, sequências da saga, fluxo do RAG | Partes 2 e 4 |
| [`parte-3-containers/`](./parte-3-containers) | Vídeo, instruções de execução, escalabilidade | Parte 3 |
| [`parte-4-llm/`](./parte-4-llm) | RAG, LangChain, resiliência, latência e custo, roteiro da demo | Parte 4 |
| [`apresentacoes/`](./apresentacoes) | Slides de cada etapa | Todas |
| [`adr/`](./adr) | Registro de decisões arquiteturais e suas justificativas | Contínuo |
| [`BOARD.md`](./BOARD.md) | Como o board funciona: colunas, campos, DoR/DoD, áreas | Contínuo |

## Por que os ADRs importam

A Parte 2 não avalia só *o que* foi decidido, mas se a decisão foi **justificada frente à
alternativa** — por que este corte de serviços e não outro, por que saga orquestrada e não
coreografada. A arguição é dirigida nominalmente: o docente escolhe quem responde.

Registrar a decisão no momento em que ela é tomada é muito mais barato do que reconstruir o
raciocínio três semanas depois. Use [`adr/template.md`](./adr/template.md).

## Decisões em aberto

| ADR | Decisão | Trava o quê |
|---|---|---|
| [0002](./adr/0002-variante-da-saga.md) | Saga orquestrada ou coreografada | Existência de `services/acolhimento-saga/` |
| [0003](./adr/0003-servico-com-cqrs.md) | Serviço com CQRS e defasagem aceitável | Modelo de leitura e a demo da Parte 4 |
| [0004](./adr/0004-bancos-por-servico.md) | Tecnologia de banco por serviço | `db/migrations` de cada serviço |
| [0005](./adr/0005-versionamento-da-api.md) | Estratégia de versionamento | Todos os contratos em `api/` |
| [0006](./adr/0006-fluxo-com-outbox.md) | Fluxo que usa outbox | Modelagem de eventos |

Fluxo de trabalho, padrão de commits e checklist de PR: [`../CONTRIBUTING.md`](../CONTRIBUTING.md).
