# Vídeo — Parte 3

**Link:** *(a preencher)*
**Duração máxima:** 10 minutos

## Divisão de fala

Cada integrante explica uma parte **distinta**. Quem não aparece recebe a penalidade por não
participação.

| Trecho | Integrante | Conteúdo |
|---|---|---|
| | | Dockerfiles e multi-stage build (com o ganho justificado) |
| | | Compose subindo o sistema com um comando, volumes e redes |
| | | Deployments, Services e Ingress |
| | | ConfigMaps, Secrets e demonstração de escalabilidade |

## Roteiro

1. Clone limpo → `docker compose up` → sistema no ar.
2. Volumes: derrubar e subir de novo, dados preservados.
3. Redes: mostrar o isolamento entre camadas.
4. `kubectl apply` → pods rodando.
5. Ingress roteando de fora, espelhando o gateway routing da Parte 2.
6. `kubectl scale` → réplicas subindo → evidência de distribuição de carga.
