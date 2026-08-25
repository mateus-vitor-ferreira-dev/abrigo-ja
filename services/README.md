# Serviços de domínio

**Esta pasta contém exatamente os quatro serviços de domínio exigidos, e nada além disso.**

| Pasta | Responsabilidade |
|---|---|
| `familias/` | Cadastro e fila de priorização de famílias afetadas |
| `abrigos/` | Abrigos, estrutura e controle de vagas |
| `suprimentos/` | Estoque de kits e materiais |
| `logistica/` | Veículos, equipes e ordens de transporte |

O mínimo exigido são 4 serviços de domínio independentes, com um banco por serviço em instâncias
separadas. Contar os serviços de domínio deste projeto é contar as pastas daqui.

Os serviços de **apoio** — orquestrador da saga e assistente de LLM — ficam em
[`../platform`](../platform). Eles não são serviços de domínio e não entram nessa contagem.

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
