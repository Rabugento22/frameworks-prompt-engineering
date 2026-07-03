---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 01](README.md)

---

# Justificativa da Escolha do Framework

## Questão 01

### Framework Utilizado

**R-T-F (Role – Task – Format)**

---

# Objetivo

O objetivo desta questão consistiu em aplicar um framework de Prompt Engineering capaz de orientar um Modelo de Linguagem (LLM) na geração de um Dockerfile para uma aplicação Flask, atendendo aos requisitos técnicos apresentados no cenário da Hill Valley Tech.

A escolha do framework deveria favorecer a construção de um prompt claro, objetivo e com baixa ambiguidade.

---

# Por que o Framework R-T-F?

O framework **R-T-F** foi escolhido por sua simplicidade e eficiência em tarefas voltadas à geração de artefatos técnicos.

Sua estrutura é composta por três elementos fundamentais:

- **Role (Papel):** define o especialista que o modelo deve representar.
- **Task (Tarefa):** especifica exatamente o que deverá ser realizado.
- **Format (Formato):** determina como a resposta deverá ser organizada.

Essa abordagem permite direcionar o modelo de forma objetiva, reduzindo interpretações incorretas e aumentando a consistência da resposta.

---

# Aplicação na Questão

Nesta atividade, o framework foi empregado da seguinte forma:

| Componente | Aplicação |
|------------|-----------|
| **Role** | Engenheiro DevOps Sênior especializado em Docker, Python e Kubernetes. |
| **Task** | Criar um Dockerfile para uma aplicação Flask utilizando boas práticas de conteinerização. |
| **Format** | Apresentar o Dockerfile completo, acompanhado de comentários e breve justificativa técnica. |

A definição explícita desses três elementos permitiu ao modelo compreender o contexto e produzir uma resposta alinhada às expectativas do desafio.

---

# Benefícios Observados

Durante o experimento, a utilização do framework proporcionou:

- definição clara do contexto técnico;
- redução de ambiguidades;
- maior aderência ao formato solicitado;
- organização da resposta;
- geração de um Dockerfile compatível com boas práticas de DevOps.

Além disso, a estrutura do prompt reduziu a necessidade de refinamentos sucessivos, tornando a interação mais eficiente.

---

# Adequação ao Problema

A tarefa proposta envolvia a geração de um único artefato técnico bem definido.

Por essa razão, não havia necessidade de utilizar frameworks mais complexos voltados para raciocínio iterativo ou comparação de cenários.

O R-T-F mostrou-se suficiente para:

- estabelecer o contexto;
- definir a atividade;
- orientar a estrutura da resposta.

Essa simplicidade contribuiu para um resultado consistente e de fácil reprodução.

---

# Comparação com Outros Frameworks

Durante o desenvolvimento do projeto foram utilizados outros frameworks, como:

- **T-A-G** (Task – Action – Goal);
- **B-A-B** (Before – After – Bridge);
- **C-A-R-E** (Context – Action – Result – Example);
- **R-I-S-E** (Role – Input – Steps – Expectation).

Embora todos sejam úteis em contextos específicos, o **R-T-F** apresentou maior aderência para tarefas de geração direta de código e configuração de infraestrutura.

---

# Conclusão

A escolha do framework **R-T-F** mostrou-se adequada para esta atividade, pois permitiu estruturar um prompt simples, claro e objetivo.

O modelo conseguiu interpretar corretamente o papel atribuído, executar a tarefa solicitada e apresentar a resposta no formato esperado, evidenciando a importância da Engenharia de Prompt na obtenção de resultados técnicos consistentes.

---

# Sugestões de Melhoria

Caso esta atividade fosse aplicada em um ambiente corporativo, o prompt poderia ser enriquecido com requisitos adicionais, como:

- utilização obrigatória de imagens *distroless* ou *slim*;
- geração de imagens multiestágio (*multi-stage builds*);
- inclusão de verificações de segurança durante o processo de build;
- integração com ferramentas de análise de vulnerabilidades;
- geração automática de SBOM (*Software Bill of Materials*);
- conformidade com padrões internos de segurança e governança.

Essas sugestões representam possibilidades de evolução do experimento e **não alteram o conteúdo originalmente produzido pelo modelo de IA**.

---

⬅️ [Anterior](04-output.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](SUMMARY.md) | ➡️ [Próximo](06-melhorias.md)

---
