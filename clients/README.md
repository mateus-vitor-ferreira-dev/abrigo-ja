# Clientes

Dois clientes distintos (mínimo exigido), cada um atrás do seu BFF.

| Pasta | Cliente | BFF |
|---|---|---|
| `painel-web/` | Painel de comando da coordenação | `bff/bff-painel` |
| `app-campo/` | Aplicativo do agente em campo | `bff/bff-campo` |

Nenhum cliente fala direto com serviço de domínio: sempre gateway → BFF → serviços.

O `app-campo` não precisa ser nativo — uma PWA atende, desde que o **uso** seja de fato
diferente do painel (tela pequena, poucos campos, tolerância a conexão instável). O que a
avaliação verifica é a diferença de necessidade de dados, não a tecnologia.
