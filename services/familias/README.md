# familias

Cadastro das famílias afetadas e fila de priorização.

- **Banco:** próprio e isolado (tecnologia a definir — ver ADR).
- **Publica:** `familia.cadastrada`, `familia.priorizada`, `familia.acolhida`
- **Compensação na saga:** devolve a família à fila **sem perder posição**.
- Contrato REST em [`/docs/api`](../../docs/api).

Candidato natural a **CQRS**: a fila de priorização é lida com muito mais frequência do que
escrita, e o painel precisa dela ordenada e agregada. Decisão em `docs/arquitetura/cqrs.md`.
