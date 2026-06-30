# Prompt Utilizado

## Framework

**C-A-R-E (Context – Action – Result – Example)**

---

# Estrutura

```text
Context

↓

Action

↓

Result

↓

Example
```

---

# Prompt Original

## Context

A Hill Valley Tech possui um padrão corporativo obrigatório para todos os módulos Terraform.

Os principais requisitos incluem:

- utilização das tags `Owner`, `CostCenter` e `Environment`;
- prefixo obrigatório `hvt-`;
- buckets S3 com criptografia SSE-S3;
- versionamento habilitado;
- bloqueio total de acesso público;
- logging obrigatório;
- variáveis documentadas com `description` e `type`.

Também foi disponibilizado um exemplo de módulo VPC representando o padrão interno de codificação.

---

## Action

Criar um módulo Terraform reutilizável para criação de buckets Amazon S3 contendo:

- `main.tf`;
- `variables.tf`;
- `outputs.tf`;
- exemplo de utilização.

---

## Result

Produzir um módulo pronto para utilização em produção, reutilizável por qualquer equipe e totalmente aderente aos requisitos de segurança, compliance e padronização definidos pela organização.

---

## Example

Utilizar como referência o módulo VPC apresentado pela empresa, preservando:

- organização do código;
- nomenclatura dos recursos;
- utilização de `locals`;
- tratamento das tags;
- estilo de codificação.

---

# Objetivo

O prompt foi estruturado para fornecer ao modelo todas as informações necessárias antes da geração do código, reduzindo ambiguidades e aumentando a aderência às normas corporativas.

---

# Benefícios Observados

A utilização do framework C-A-R-E proporcionou:

- melhor contextualização do problema;
- maior aderência aos padrões internos;
- redução de inconsistências;
- geração organizada dos arquivos Terraform;
- elevada reutilização da solução produzida.
