# assistente

Integração de LLM (Parte 4). Não é chatbot decorativo: responde a uma necessidade real da
coordenação usando a base de conhecimento do domínio e dados vivos do sistema.

```
assistente/
├── src/                    pipeline de ingestão, chains e tools
├── base-conhecimento/
│   ├── fontes/             corpus (protocolos de Defesa Civil, normas de abrigo, ...)
│   └── README.md           origem, licença e critério de inclusão de cada fonte
├── avaliacao/              as 5+ perguntas de teste e as respostas com/sem recuperação
└── tests/
```

Obrigatórios da rubrica:

- **RAG:** ingestão → embeddings → base vetorial → recuperação → geração.
- **LangChain:** chains na composição do fluxo + ao menos **uma tool** consultando dados reais
  do próprio sistema (ex.: vagas disponíveis agora, via `abrigos`).
- **LLM como dependência remota falível:** implementar ao menos **dois** de — circuit breaker,
  timeout + retry com backoff, cache, fallback.

Avaliação do RAG em `avaliacao/`; latência e custo em `docs/parte-4-llm/latencia-e-custo.md`.
