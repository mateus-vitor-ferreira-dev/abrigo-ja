# API Gateway e gateway routing

## Regras de roteamento

| Rota externa | Destino interno | Observação |
|---|---|---|
| `/painel/*` | `bff-painel` | |
| `/campo/*` | `bff-campo` | |
| `/v1/abrigos/*` | `abrigos` | acesso direto, se justificado |

## Responsabilidades atribuídas ao gateway

- [ ] Autenticação
- [ ] Rate limiting
- [ ] Agregação
- [ ] Roteamento por versão
- [ ] Observabilidade / correlação de requisições

Marcar o que de fato foi atribuído e **por quê** — inclusive o que foi deixado de fora de
propósito. Na Parte 3 estas regras precisam se refletir no Ingress (`infra/k8s/ingress/`).
