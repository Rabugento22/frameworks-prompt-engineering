# Justificativa da Escolha do Framework

## Framework Utilizado

**R-T-F (Role – Task – Format)**

---

# Objetivo

O objetivo desta atividade foi utilizar um framework de Prompt Engineering capaz de orientar um Modelo de Linguagem (LLM) na geração de um script Bash para automatização do backup do banco PostgreSQL da aplicação Ledger.

A solução deveria atender simultaneamente requisitos técnicos, funcionais e operacionais, simulando um ambiente corporativo de produção.

---

# Motivo da Escolha

O framework **R-T-F** foi escolhido devido à sua simplicidade e objetividade.

Sua estrutura permite separar claramente três componentes essenciais da comunicação com o modelo:

- **Role** — define o especialista que deverá executar a tarefa;
- **Task** — especifica detalhadamente o problema a ser resolvido;
- **Format** — determina exatamente como a resposta deverá ser entregue.

Essa organização reduz ambiguidades e melhora significativamente a qualidade das respostas produzidas.

---

# Aplicação na Questão

Nesta atividade, os componentes do framework foram definidos da seguinte forma:

| Componente | Aplicação |
|------------|-----------|
| **Role** | Engenheiro SRE Sênior especialista em PostgreSQL, Linux, AWS e automação de backups |
| **Task** | Desenvolver um script Bash completo para automatizar o backup do banco Ledger |
| **Format** | Retornar apenas o script Bash completo e uma breve explicação técnica |

---

# Benefícios Observados

Durante o experimento foi possível observar diversos benefícios da utilização do framework:

- definição clara do contexto técnico;
- redução de ambiguidades;
- melhor organização da resposta;
- aderência aos requisitos apresentados;
- menor necessidade de refinamentos sucessivos.

Além disso, o modelo compreendeu corretamente o cenário proposto e produziu um script organizado e compatível com boas práticas de SRE.

---

# Adequação ao Cenário

O problema consistia na geração de um único artefato técnico (script Bash).

Por esse motivo, não havia necessidade de utilizar frameworks mais complexos voltados para raciocínio iterativo.

O R-T-F mostrou-se suficiente para direcionar corretamente o modelo durante toda a atividade.

---

# Considerações Arquiteturais

Embora o requisito solicitasse a exclusão automática de backups com mais de 30 dias através do próprio script, em ambientes corporativos essa responsabilidade normalmente é delegada ao serviço de armazenamento.

No caso do Amazon S3, recomenda-se utilizar **Lifecycle Policies**, responsáveis por remover automaticamente objetos após o período de retenção definido.

Essa abordagem apresenta diversas vantagens:

- menor complexidade do script;
- menor risco de exclusões incorretas;
- maior confiabilidade operacional;
- melhor aderência às boas práticas de arquitetura em nuvem.

Essa observação foi destacada pelo próprio enunciado da atividade e representa uma prática recomendada para ambientes produtivos. :contentReference[oaicite:0]{index=0}

---

# Conclusão

O framework **R-T-F** mostrou-se adequado para esta atividade, permitindo estruturar um prompt claro, objetivo e consistente.

Sua utilização contribuiu diretamente para que o modelo produzisse um script organizado, seguro e alinhado às boas práticas de automação operacional.
