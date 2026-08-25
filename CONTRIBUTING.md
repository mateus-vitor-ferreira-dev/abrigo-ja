# Fluxo de trabalho

Este arquivo não é burocracia: o uso do Git é **objeto de avaliação** na disciplina, e a nota é individual. Quem não aparece corretamente no histórico perde nota mesmo tendo trabalhado.

---

## 1. Antes do primeiro commit — configure sua autoria

Commit atribuído ao autor errado **não conta** para quem efetivamente trabalhou. Rode uma vez, dentro do repositório:

```bash
git config user.name "Seu Nome Completo"
git config user.email "seu.email@estudante.ufla.br"
```

Use o mesmo e-mail cadastrado na sua conta do GitHub. Confira depois com:

```bash
bash scripts/verificar-git.sh
```

## 2. Branches

Três níveis:

| Branch | Para quê |
|---|---|
| `main` | Apenas releases estáveis. Uma por etapa entregue. Nunca se commita direto. |
| `develop` | Integração. **Todo trabalho novo parte daqui.** |
| `feature/<nome>` · `fix/<nome>` | Branches curtas, uma por funcionalidade |

```
feature/reserva-de-vagas
feature/saga-acolhimento
fix/liberacao-de-kit
docs/diagrama-de-sequencia
```

```bash
git checkout develop && git pull
git checkout -b feature/reserva-de-vagas
```

Nada é commitado direto na `main` nem na `develop`.

## 3. Commits

Formato: `<tipo>: <descrição no imperativo>`

Tipos: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

```
feat: adiciona reserva de vaga com expiração
docs: documenta contrato do serviço de abrigos
fix: libera kit ao compensar acolhimento
```

**Trabalho em par é obrigatoriamente registrado.** Linha em branco após a mensagem, depois:

```
feat: implementa compensação da saga

Co-authored-by: Nome da Pessoa <email@estudante.ufla.br>
```

Sem isso, só um dos dois recebe crédito.

## 4. Pull requests

Toda branch entra na `develop` por PR. Cada PR precisa de **ao menos um review aprovado por outro integrante**. PR auto-aprovado ou mesclado sem revisão não conta para nenhum dos dois.

Ao fim de cada etapa, abre-se um PR de release `develop` → `main`, e a `main` recebe a tag da etapa (`parte-1`, `parte-2`, …). É a `main` que representa o que foi apresentado — útil quando a devolutiva do docente chegar e for preciso comparar com o que estava no ar naquele dia.

Como revisor, você não é carimbo. Antes de aprovar:

- [ ] Consigo explicar o que este código faz se for perguntado na arguição?
- [ ] O comportamento descrito no PR é o que o código realmente faz?
- [ ] A documentação em `/docs` foi atualizada, se necessário?
- [ ] Não há credencial, senha ou chave no código?

Comentário de review vale mais que aprovação silenciosa — ele fica registrado como participação.

## 5. Ritmo

O histórico é avaliado quanto à **distribuição ao longo do semestre**. Concentrar tudo em poucos commits na véspera é explicitamente tratado como indício de ausência de trabalho colaborativo e pesa na nota individual.

Combinado do grupo: cada integrante commita em pelo menos **duas semanas distintas por etapa**. *(a confirmar com o grupo)*

## 6. Congelamento do repositório

Nas etapas apresentadas em dois dias (Partes 2 e 4), o repositório é congelado às **23h59 da véspera do primeiro dia de apresentação**, para todos os grupos. Commits depois disso não são considerados naquela etapa.

| Etapa | Apresentação | Congelamento |
|---|---|---|
| Parte 2 | 22/10 e 27/10 | 21/10, 23h59 |
| Parte 4 | 10/12 e 15/12 | 09/12, 23h59 |

## 7. Nunca commitar

Credenciais em código-fonte **zeram** o item de ConfigMaps e Secrets na Parte 3. Toda configuração vai para variável de ambiente e `.env` (que está no `.gitignore`). Versione apenas o `.env.example`, sem valores reais.
