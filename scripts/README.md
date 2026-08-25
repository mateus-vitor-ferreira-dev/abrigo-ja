# Scripts

| Script | O que faz | Etapa |
|---|---|---|
| `verificar-git.sh` | Confere `user.name`/`user.email` antes do primeiro commit | Contínuo |

A criar, conforme as etapas avançam:

- **seed** — popula os bancos com o cenário usado na demonstração (abrigos, kits, veículos e
  algumas famílias na fila).
- **demo-saga-sucesso** / **demo-saga-falha** — disparam o caminho feliz e o cenário de falha.
  A Parte 4 exige provocar a falha **durante** a apresentação; ter o comando pronto evita
  improviso ao vivo.
- **medir-latencia** — coleta os tempos de resposta da integração com o LLM para a análise de
  latência e custo.
