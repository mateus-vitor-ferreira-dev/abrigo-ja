# acolhimento-saga

Orquestrador da transação de acolhimento — **existe apenas se a saga for orquestrada**.

Transação de negócio atravessando 3+ serviços:

```
reservar vaga (abrigos) → reservar kit (suprimentos) → alocar transporte (logistica)
```

Compensações, na ordem inversa:

```
cancelar transporte → devolver kit ao estoque → liberar vaga → família volta à fila
```

Guarda a máquina de estados e o log de execução de cada saga — é ele que torna possível
**mostrar a compensação acontecendo** na apresentação, e não apenas afirmar que aconteceu.

Modelagem, diagramas de sequência e justificativa da variante escolhida frente à alternativa:
`docs/arquitetura/saga.md`.
