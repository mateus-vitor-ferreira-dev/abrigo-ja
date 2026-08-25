# CI (opcional)

Não é item da rubrica, mas ajuda em dois que são: **PR com review** e **qualidade das imagens**.

Sugestões, conforme o código aparecer:
- `ci.yml` — build e testes de cada serviço nos PRs;
- verificação de que nenhum `.env` ou credencial entrou no diff;
- `docker build` de cada serviço, garantindo que os Dockerfiles continuam funcionando.
