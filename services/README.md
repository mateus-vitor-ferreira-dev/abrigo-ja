# Serviços

Quatro serviços de domínio (mínimo exigido) mais dois de apoio.

| Pasta | Papel | Conta como serviço de domínio? |
|---|---|---|
| `familias/` | Cadastro e fila de priorização de famílias afetadas | Sim |
| `abrigos/` | Abrigos, estrutura e controle de vagas | Sim |
| `suprimentos/` | Estoque de kits e materiais | Sim |
| `logistica/` | Veículos, equipes e ordens de transporte | Sim |
| `acolhimento-saga/` | Coordenação da transação de acolhimento | Não — apoio |
| `assistente/` | RAG + LangChain sobre a base de conhecimento | Não — apoio |

`acolhimento-saga/` só existe se a decisão for **saga orquestrada**. Se o grupo optar por
coreografada, a pasta é removida e a coordenação passa a viver nos eventos trocados entre os
quatro serviços de domínio. Decisão pendente — registrar em `docs/adr/`.

## Estrutura interna de cada serviço

```
<servico>/
├── src/                 código
├── tests/               testes
├── db/migrations/       schema do banco PRÓPRIO do serviço
├── Dockerfile           obrigatório e próprio (Parte 3 — imagem de terceiro sem
│                        customização não conta)
└── README.md            responsabilidade, banco, eventos publicados/consumidos
```

Linguagem é livre e por serviço — poliglota é incentivado. O que não é livre: **nenhum serviço
acessa o banco de outro**. Toda leitura de dado alheio passa por API ou evento.
