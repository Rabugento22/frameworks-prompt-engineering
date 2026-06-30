# Justificativa da Escolha do Framework

## Framework Utilizado

**C-A-R-E (Context – Action – Result – Example)**

---

# Objetivo

O objetivo desta atividade foi aplicar um framework de Prompt Engineering capaz de orientar um Modelo de Linguagem (LLM) na construção de um módulo Terraform reutilizável para criação de buckets Amazon S3, respeitando integralmente os padrões corporativos definidos pela Hill Valley Tech.

O desafio exigia não apenas a geração do código, mas também a observância de requisitos de segurança, padronização e conformidade.

---

# Motivo da Escolha

O framework **C-A-R-E** foi escolhido por organizar o prompt em quatro componentes que conduzem o modelo desde a compreensão do cenário até a geração de uma solução consistente.

Sua estrutura é composta por:

- **Context** — apresenta o ambiente, regras e restrições;
- **Action** — define claramente a tarefa;
- **Result** — estabelece o resultado esperado;
- **Example** — fornece um padrão de referência para reduzir ambiguidades.

Essa abordagem mostrou-se especialmente adequada para geração de Infrastructure as Code em ambientes corporativos.

---

# Aplicação na Questão

Durante o experimento, os componentes foram utilizados da seguinte forma:

| Componente | Aplicação |
|------------|-----------|
| **Context** | Definição dos padrões corporativos para módulos Terraform. |
| **Action** | Desenvolvimento de um módulo reutilizável para buckets Amazon S3. |
| **Result** | Entrega de um módulo pronto para produção, seguro e padronizado. |
| **Example** | Utilização do módulo VPC como referência de estilo e organização. |

---

# Benefícios Observados

A utilização do framework proporcionou diversos benefícios:

- melhor interpretação das regras corporativas;
- padronização do código gerado;
- redução de ambiguidades;
- maior reutilização entre equipes;
- elevada aderência aos requisitos de segurança e compliance.

---

# Importância do Componente "Example"

O componente **Example** foi determinante para o sucesso da atividade.

Ao fornecer um módulo Terraform existente como referência, o modelo conseguiu reproduzir corretamente:

- estrutura dos arquivos;
- padrão de nomenclatura;
- utilização de `locals`;
- organização das tags;
- estilo de codificação adotado pela empresa.

Essa referência reduziu significativamente a possibilidade de inconsistências.

---

# Adequação ao Problema

Problemas envolvendo padronização corporativa normalmente exigem que o modelo compreenda regras que não fazem parte da sintaxe da linguagem, mas sim das convenções internas da organização.

Nesse contexto, o framework **C-A-R-E** mostrou-se especialmente adequado por fornecer todas essas informações antes da geração do código.

---

# Conclusão

O framework **C-A-R-E** apresentou excelente aderência à atividade proposta.

Sua estrutura permitiu produzir um módulo Terraform organizado, reutilizável e compatível com os padrões técnicos e de governança estabelecidos pela organização.
