---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 05](README.md)

---

# Contexto da Questão 05

## Cenário

Ambientes Kubernetes corporativos exigem workloads seguros, resilientes e aderentes às recomendações da Cloud Native Computing Foundation (CNCF).

No entanto, aplicações legadas frequentemente permanecem em produção utilizando configurações antigas, expondo riscos relacionados à segurança, disponibilidade e operação.

A atividade apresenta exatamente esse cenário, propondo a evolução de um Deployment existente para um padrão moderno de implantação. :contentReference[oaicite:2]{index=2}

---

# Problema

O Deployment original apresentava diversas limitações:

- apenas uma réplica;
- utilização da tag `latest`;
- credenciais armazenadas diretamente no manifesto;
- ausência de limites de recursos;
- ausência de probes;
- inexistência de SecurityContext;
- execução potencial como usuário root;
- ausência de estratégia de atualização.

Esses problemas reduzem a confiabilidade do ambiente e aumentam os riscos operacionais.

---

# Objetivo

Construir um prompt capaz de orientar um Modelo de Linguagem na transformação completa do manifesto, aplicando boas práticas atuais do Kubernetes.

---

# Competências Desenvolvidas

Durante esta atividade foram aplicados conhecimentos relacionados a:

- Kubernetes;
- Segurança de Containers;
- Deployments;
- Rolling Updates;
- Resource Management;
- Kubernetes Secrets;
- Engenharia de Prompt;
- Hardening de Workloads.

---

# Relação com o Framework

O framework **B-A-B** mostrou-se especialmente adequado porque descreve claramente a evolução entre um estado inicial vulnerável e um estado final seguro, orientando o modelo durante todo o processo de modernização.

---

⬅️ [Anterior](README.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](02-prompt.md)

---
