# Apoio ao Compose

Overrides e arquivos auxiliares referenciados pelo `docker-compose.yml` da raiz: scripts de
inicialização de banco, dados de seed para a demonstração, `compose.override.yml` de
desenvolvimento.

Exigido na Parte 3:
- **volumes** nomeados para persistência de cada banco;
- **redes** com isolamento entre camadas (borda / aplicação / dados) — o banco de um serviço não
  deve ser alcançável a partir da rede de borda.
