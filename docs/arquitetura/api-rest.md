# API REST

## Recursos, verbos e códigos de status

Contratos completos em [`../api`](../api). Aqui ficam as convenções que valem para todos os
serviços.

| Situação | Status |
|---|---|
| Criação bem-sucedida | 201 + `Location` |
| Requisição aceita e ainda em processamento (saga) | 202 |
| Recurso inexistente | 404 |
| Conflito de estado (vaga já reservada) | 409 |
| Falha de validação | 422 |

## Versionamento

Estratégia adotada: *(a definir)*. Alternativas a comparar: caminho (`/v1/...`), header
(`Accept: application/vnd.abrigoja.v1+json`), query string. **Justificar a escolha** — o item é
avaliado pela justificativa, não pela estratégia em si.

## HATEOAS

Ao menos um recurso com links de navegação. Candidato: `abrigos/{id}`, de onde se navega para
vagas, reservas e o abrigo mais próximo com vaga.

```json
{
  "id": "...",
  "_links": {
    "self":     { "href": "/v1/abrigos/..." },
    "vagas":    { "href": "/v1/abrigos/.../vagas" },
    "reservar": { "href": "/v1/abrigos/.../reservas", "method": "POST" }
  }
}
```
