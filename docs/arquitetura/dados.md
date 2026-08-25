# Dados: database per service, consistência eventual e outbox

## Um banco por serviço

| Serviço | Tecnologia | Por que esta e não outra |
|---|---|---|
| `familias` | | |
| `abrigos` | | |
| `suprimentos` | | |
| `logistica` | | |

Poliglota é permitido e incentivado — mas cada escolha precisa de justificativa. Instâncias
**separadas**, não schemas diferentes no mesmo servidor.

## Pontos de consistência eventual

Onde o sistema fica temporariamente inconsistente, por quanto tempo, e por que isso é aceitável
no domínio.

| Ponto | Janela de inconsistência | Aceitável porque |
|---|---|---|
| | | |

## Risco de dual write

Onde uma operação grava no banco **e** publica um evento. Sem outbox, os dois podem divergir se
o processo cair entre as duas ações.

## Padrão outbox

Fluxo escolhido para aplicar outbox, e como a tabela é drenada para o broker.
