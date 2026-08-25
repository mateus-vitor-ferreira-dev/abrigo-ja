# Parte 4 — Sistema em funcionamento (20%)

Apresentação em 10/12 ou 15/12. O sistema roda **ao vivo** — slides sem execução não são aceitos.

| Arquivo | Conteúdo | Peso |
|---|---|---|
| `roteiro-demonstracao.md` | Ordem da demo ao vivo e divisão de fala | 20% + 20% + 10% |
| `rag.md` | Pipeline: ingestão, embeddings, base vetorial, recuperação, geração | 20% |
| `langchain.md` | Chains e a tool que consulta dados reais do sistema | 10% |
| `resiliencia.md` | Circuit breaker / timeout+retry / cache / fallback (≥2) | 15% |
| `latencia-e-custo.md` | Tempo de resposta medido e custo por operação em escala | 15% |

A avaliação do RAG (5+ perguntas, com e sem recuperação) fica junto do código, em
[`/services/assistente/avaliacao`](../../services/assistente/avaliacao).

O LLM precisa ter **propósito real no domínio** — chatbot decorativo acoplado à interface não
atende ao requisito.
