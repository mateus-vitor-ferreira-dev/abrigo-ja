# LLM como serviço distribuído

O provedor é uma dependência remota **falível**. Implementar ao menos **dois** mecanismos:

| Mecanismo | Implementado? | Onde | Parâmetros |
|---|---|---|---|
| Circuit breaker | [ ] | | limiar, janela, tempo de meia-abertura |
| Timeout + retry com backoff | [ ] | | timeout, tentativas, base do backoff |
| Cache (semântico ou por chave) | [ ] | | chave, TTL, taxa de acerto |
| Fallback para indisponibilidade | [ ] | | o que é servido quando o modelo cai |

## Como demonstrar ao vivo

Derrubar o acesso ao provedor durante a apresentação e mostrar o sistema **degradando com
elegância** em vez de quebrar.
