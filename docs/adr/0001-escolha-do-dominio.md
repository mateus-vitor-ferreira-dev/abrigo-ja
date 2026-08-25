# ADR-0001: Escolha do domínio — resposta a desastres

**Data:** 25/08/2026
**Status:** aceita
**Participantes:** *(a confirmar — os 4 integrantes)*

## Contexto

O trabalho exige um domínio que sustente uma SAGA atravessando ao menos três serviços, com transações compensatórias reais, e um RAG com base de conhecimento própria e relevante. Domínios triviais (CRUD, lista de tarefas, blog) são recusados.

## Alternativas consideradas

| Alternativa | A favor | Contra |
|---|---|---|
| Resgate de alimentos | SAGA limpa, RAG normativo forte, escopo controlado | Risco de parecer "app de doação" |
| Coleta seletiva | Referências muito fortes, CQRS óbvio | Roteirização pode consumir o semestre |
| **Resposta a desastres** | Três recursos finitos e independentes; clientes radicalmente distintos | Modelagem de "família" mais complexa que "pedido" |
| Regulação de exames no SUS | Melhor tool de LangChain; alto valor social | Risco de o LLM escorregar para orientação clínica |

## Decisão

Domínio: coordenação de resposta a desastres — acolhimento de famílias, vagas em abrigo e distribuição de suprimentos.

## Justificativa

A transação de acolhimento reserva três recursos escassos e independentes (vaga, kit, veículo) em serviços diferentes. Isso torna a SAGA e suas compensações uma consequência natural do domínio, não um padrão encaixado à força — o que importa especialmente na Parte 4, onde a falha precisa ser provocada ao vivo.

Os dois clientes também se justificam sozinhos: um painel situacional agregado para a coordenação e um formulário de cadastro rápido para o agente em campo, com conexão instável. São necessidades de dados genuinamente diferentes, que é o que a avaliação de BFF exige demonstrar.

## Consequências

- A modelagem de família (composição, necessidades especiais) precisa ser mantida simples para não competir com o esforço de infraestrutura.
- O tema exige sobriedade na apresentação: o foco é coordenação logística.
- Escopo fechado em resposta ao evento. Monitoramento, alertas e reconstrução ficam fora.
