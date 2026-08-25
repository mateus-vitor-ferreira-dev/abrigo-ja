# logistica

Veículos, equipes e ordens de transporte.

- **Banco:** próprio e isolado.
- **Publica:** `transporte.alocado`, `transporte.cancelado`
- **Compensação na saga:** cancela a ordem de transporte.
- É o último passo do caminho feliz — logo, o ponto mais fácil de fazer falhar ao vivo na
  Parte 4 para disparar a compensação em cadeia.
- Contrato REST em [`/docs/api`](../../docs/api).
