# Contratos de API

Um arquivo OpenAPI por serviço exposto. Este é o local canônico dos contratos — os serviços
apontam para cá.

| Arquivo | Serviço |
|---|---|
| `familias.openapi.yaml` | `services/familias` |
| `abrigos.openapi.yaml` | `services/abrigos` |
| `suprimentos.openapi.yaml` | `services/suprimentos` |
| `logistica.openapi.yaml` | `services/logistica` |
| `bff-painel.openapi.yaml` | `bff/bff-painel` |
| `bff-campo.openapi.yaml` | `bff/bff-campo` |

O contrato precisa estar **completo** na Parte 2: todos os endpoints, verbos, códigos de status
e schemas de request/response. Convenções gerais e HATEOAS em
[`../arquitetura/api-rest.md`](../arquitetura/api-rest.md).
