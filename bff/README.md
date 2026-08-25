# Backends for Frontend

Dois BFFs, um por cliente. A rubrica exige **demonstrar a diferença** entre as respostas
servidas a cada um — dois BFFs que devolvem o mesmo payload não pontuam.

| BFF | Cliente | Necessidade que o justifica |
|---|---|---|
| `bff-painel/` | Painel de comando (coordenação) | Visão agregada e ampla: ocupação por abrigo, fila priorizada, sagas em curso. Muitos dados, poucas requisições, tela grande. |
| `bff-campo/` | Aplicativo de campo (agente) | Payload mínimo por conexão instável: só a família em atendimento e a próxima ação. Poucos campos, tolerante a rede ruim. |

Guardar em `docs/arquitetura/bff.md` o **mesmo caso de uso** respondido pelos dois BFFs, lado a
lado, com os dois payloads — é essa comparação que a avaliação procura.
