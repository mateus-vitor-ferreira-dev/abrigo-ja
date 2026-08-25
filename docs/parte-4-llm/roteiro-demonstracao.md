# Roteiro da demonstração ao vivo

| # | O que mostrar | Item avaliado |
|---|---|---|
| 1 | Fluxo de ponta a ponta: cliente → gateway → BFF → serviços | Sistema funcional (20%) |
| 2 | SAGA no caminho feliz | SAGA (20%) |
| 3 | **Falha provocada ao vivo** e compensação efetiva | SAGA (20%) — obrigatório |
| 4 | Escrita se refletindo no modelo de leitura | CQRS (10%) |
| 5 | Bancos separados por serviço, evidenciados | Sistema funcional |
| 6 | Assistente respondendo com RAG + tool | RAG (20%) / LangChain (10%) |
| 7 | Provedor de LLM indisponível → fallback/circuit breaker | Resiliência (15%) |

## Como a falha será provocada

*(definir e ensaiar — derrubar o container de `logistica`, injetar erro via variável de
ambiente, ou uma rota de teste que force a exceção)*

Comando pronto em `scripts/`. Improvisar a falha ao vivo é o jeito mais fácil de perder 20%.

## Divisão de fala

| Trecho | Integrante |
|---|---|
| | |
