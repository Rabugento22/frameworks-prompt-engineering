# Contexto da Questão 06

## Cenário

A adoção de Infrastructure as Code (IaC) tornou-se uma prática essencial para organizações que buscam padronização, automação e governança na administração de ambientes em nuvem.

Para garantir consistência entre os diversos times de infraestrutura, a Hill Valley Tech definiu um padrão corporativo obrigatório para todos os módulos Terraform utilizados internamente.

Esses padrões estabelecem requisitos relacionados à segurança, nomenclatura, documentação e reutilização dos módulos.

---

# Problema

O desafio consistia em construir um módulo Terraform para criação de buckets Amazon S3 que atendesse simultaneamente aos seguintes requisitos:

- aplicação das tags corporativas obrigatórias;
- utilização do prefixo `hvt-`;
- habilitação da criptografia SSE-S3;
- versionamento do bucket;
- bloqueio completo de acesso público;
- configuração de logging;
- documentação completa das variáveis;
- estrutura reutilizável para diferentes equipes.

---

# Objetivo

Construir um prompt capaz de orientar um Modelo de Linguagem na geração de um módulo Terraform pronto para utilização em ambiente corporativo.

---

# Competências Desenvolvidas

Durante esta atividade foram aplicados conhecimentos relacionados a:

- Terraform;
- Infrastructure as Code;
- Amazon S3;
- Segurança em Cloud;
- Compliance;
- AWS;
- Engenharia de Prompt;
- Padronização de Infraestrutura.

---

# Relação com o Framework

O framework **C-A-R-E** mostrou-se particularmente adequado porque fornece ao modelo todas as informações necessárias para compreender o contexto organizacional antes da geração da solução.

Isso reduz ambiguidades e aumenta a aderência do código produzido aos padrões definidos pela empresa.
