---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 02](README.md)

---

# Prompt Utilizado

## Framework

**R-T-F (Role – Task – Format)**

---

# Estrutura

```text
Role
↓

Task
↓

Format
```

---

# Prompt Original

## Role

Você é um Engenheiro SRE Sênior especialista em PostgreSQL, Linux, AWS e automação de rotinas de backup em ambientes críticos de produção.

---

## Task

Criar um script Bash de produção para automatizar o backup do banco PostgreSQL **Ledger**, considerando todos os requisitos técnicos apresentados no enunciado:

- utilização do pg_dump;
- compactação utilizando gzip;
- upload para Amazon S3;
- geração de logs;
- tratamento de erros;
- validação das dependências;
- utilização da variável PGPASSWORD;
- criação automática do diretório de backup;
- remoção de backups antigos;
- compatibilidade com cron.

---

## Format

Retornar apenas:

1. Script Bash completo.
2. Explicação breve das decisões adotadas.

---

# Objetivo

O prompt foi estruturado para direcionar o modelo à geração de um script pronto para utilização em ambientes de produção, reduzindo ambiguidades e garantindo aderência aos requisitos operacionais.

---

# Benefícios Observados

A utilização do framework R-T-F proporcionou:

- clareza;
- objetividade;
- previsibilidade;
- padronização;
- redução da necessidade de refinamentos.

---

⬅️ [Anterior](01-contexto.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](03-modelo.md)

---
