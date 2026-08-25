# Serviços de apoio

Serviços que o sistema precisa mas que **não são serviços de domínio** — não têm regra de
negócio própria do Abrigo Já e não contam para o mínimo de 4 exigido pela disciplina.

| Pasta | Papel | Etapa |
|---|---|---|
| `acolhimento-saga/` | Coordena a transação de acolhimento entre os quatro serviços de domínio | Parte 2 · 4 |
| `assistente/` | RAG, LangChain e resiliência da chamada ao LLM | Parte 4 |

## Por que eles não ficam em `services/`

Porque a pergunta "quantos serviços de domínio este sistema tem?" é avaliada, e a árvore de
pastas deve respondê-la sem precisar de tabela auxiliar. Com os seis juntos, a ordem alfabética
ainda intercalava apoio e domínio, e a contagem dependia de alguém ler o README certo.

Isso **não** os rebaixa: cada um tem Dockerfile próprio, Deployment próprio e — no caso da saga
e do assistente — armazenamento próprio (log de execução das sagas; base vetorial do RAG). São
serviços de verdade, com papel diferente.

## `acolhimento-saga/` é condicional

Ele só existe se a saga for **orquestrada**. Se o grupo optar por coreografada, a pasta é
removida e a coordenação passa a viver nos eventos trocados entre os quatro serviços de domínio.
Decisão em [`docs/adr/0002-variante-da-saga.md`](../docs/adr/0002-variante-da-saga.md).
