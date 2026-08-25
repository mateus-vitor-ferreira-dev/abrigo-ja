# CQRS

## Serviço escolhido

*(a definir — candidato: `familias`, pela fila de priorização)*

## Por que este serviço se beneficia da separação

Razão de leitura/escrita, formato de leitura diferente do de escrita, custo de montar a
resposta a cada consulta.

## Modelo de escrita

## Modelo de leitura

## Como o modelo de leitura é atualizado

Por evento? Projeção síncrona? Quem consome o quê.

## Defasagem aceitável

Quanto tempo o modelo de leitura pode ficar atrás da escrita, e por que isso não quebra o
domínio. Na Parte 4 é preciso **demonstrar uma escrita se refletindo na leitura** — se a
defasagem for longa demais, a demonstração fica ruim.
