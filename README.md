# Abrigo Já

> Sistema distribuído para coordenação de resposta a desastres: acolhimento de famílias afetadas, gestão de vagas em abrigos e distribuição de suprimentos.

**GCC129 — Sistemas Distribuídos · 2026/2 · UFLA**

---

## O problema

Nota técnica do CEMADEN baseada no Censo 2022 aponta cerca de 300 municípios mineiros em áreas de risco. Belo Horizonte tem 389.218 pessoas vivendo nessas condições; Juiz de Fora, cerca de 128.946 — quase 24% da população do município. Na base conjunta CEMADEN/IBGE, 8,27 milhões de pessoas e 2,47 milhões de domicílios foram estimados como expostos a riscos hidrometeorológicos nos 872 municípios avaliados.

Quando o evento acontece, a coordenação entre famílias afetadas, vagas em abrigo, kits de suprimento e veículos costuma ser feita em planilha e grupo de mensagens. São três recursos rigorosamente finitos, alocados sob pressão de tempo, sem visão compartilhada de quem já foi atendido.

**O que este sistema faz:** coordena o acolhimento de ponta a ponta — reserva vaga, reserva kit, aloca transporte — de forma que uma falha em qualquer etapa desfaça as anteriores e devolva a família à fila de priorização sem perder posição.

**Escopo:** resposta ao evento (acolhimento e distribuição).
**Fora de escopo:** monitoramento meteorológico, emissão de alertas e reconstrução.

## Integrantes

| Nome | GitHub | E-mail institucional | Frente principal |
|---|---|---|---|
| *(a confirmar)* | @usuario | | |
| *(a confirmar)* | @usuario | | |
| *(a confirmar)* | @usuario | | |
| *(a confirmar)* | @usuario | | |

## Arquitetura

Quatro microsserviços de domínio, banco por serviço, dois clientes com BFFs distintos.

| Serviço | Responsabilidade |
|---|---|
| `familias` | Cadastro e priorização de famílias afetadas |
| `abrigos` | Abrigos, estrutura disponível e controle de vagas |
| `suprimentos` | Estoque de kits e materiais |
| `logistica` | Veículos, equipes e ordens de transporte |

**Clientes:** painel de comando (coordenação) e aplicativo de campo (agente).

Mapa das pastas e o item da avaliação que cada uma atende: [`ESTRUTURA.md`](./ESTRUTURA.md).
Documentação detalhada em [`/docs`](./docs).

## Como executar

> *(a confirmar — será preenchido na Parte 3, quando o `docker-compose.yml` existir)*

O requisito da disciplina é que um terceiro consiga subir o sistema do zero seguindo estas instruções. Isso será verificado.

```bash
# esperado ao final da Parte 3:
git clone <url-do-repo>
cd <repo>
docker compose up
```

## Estado do projeto

| Etapa | Entrega | Data | Situação |
|---|---|---|---|
| Parte 1 | Concepção e pitch | 17/09/2026 | Em andamento |
| Parte 2 | Arquitetura | 22/10 ou 27/10 | Não iniciada |
| Parte 3 | Containers e Kubernetes | 17/11/2026 | Não iniciada |
| Parte 4 | Sistema funcionando | 10/12 ou 15/12 | Não iniciada |

## Como contribuir

Fluxo de trabalho, padrão de commits e checklist de PR em [CONTRIBUTING.md](./CONTRIBUTING.md).
Colunas, campos e regras do board em [docs/BOARD.md](./docs/BOARD.md). **Leia antes do primeiro commit** — a configuração de autoria é avaliada individualmente.
