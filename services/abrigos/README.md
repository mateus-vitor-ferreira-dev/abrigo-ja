# abrigos

Abrigos, estrutura disponível e controle de vagas.

- **Banco:** próprio e isolado.
- **Publica:** `vaga.reservada`, `vaga.liberada`
- **Compensação na saga:** libera a vaga reservada.
- Recurso indicado para demonstrar **HATEOAS** (de um abrigo navega-se para vagas e reservas).
- Contrato REST em [`/docs/api`](../../docs/api).
