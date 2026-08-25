# SAGA

## Variante escolhida

**Orquestrada** ou **coreografada** — apenas uma. Justificar frente à alternativa descartada.

| | Orquestrada | Coreografada |
|---|---|---|
| A favor | | |
| Contra | | |

## Transação de negócio

Acolhimento de família, atravessando 3+ serviços:

| Passo | Serviço | Ação | Compensação |
|---|---|---|---|
| 1 | `abrigos` | reservar vaga | liberar vaga |
| 2 | `suprimentos` | reservar kit | devolver kit ao estoque |
| 3 | `logistica` | alocar transporte | cancelar ordem |
| 4 | `familias` | marcar como acolhida | devolver à fila sem perder posição |

**Todas** as compensações precisam estar definidas — a rubrica usa a palavra "todas".

## Diagramas

- Caminho feliz → `../diagramas/saga-caminho-feliz.*`
- Falha com compensação → `../diagramas/saga-falha-compensacao.*`

Na Parte 4 a falha é **provocada ao vivo**. Escolher desde já qual passo será derrubado na
demonstração e deixar o comando pronto em `scripts/`.
