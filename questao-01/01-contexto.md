🏠 [Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 📘 [Questão](README.md)

---

# Contexto da Questão 01

## Cenário

A empresa fictícia **Hill Valley Tech** está conduzindo uma iniciativa de modernização de sua infraestrutura, migrando aplicações legadas executadas em máquinas virtuais para uma plataforma baseada em Kubernetes.

Entre essas aplicações encontra-se o **Lift**, uma API desenvolvida em Python utilizando o framework Flask, atualmente em fase beta e preparada para ser implantada em um cluster Kubernetes corporativo.

Para suportar essa migração, tornou-se necessário criar um Dockerfile que atendesse aos requisitos de produção definidos pela equipe de Engenharia de Plataforma.

---

# Problema Proposto

A aplicação já possuía sua estrutura organizada e todas as dependências estavam declaradas no arquivo `requirements.txt`.

Entretanto, ainda não existia um Dockerfile capaz de empacotar a aplicação seguindo boas práticas de conteinerização.

O desafio consistia em elaborar um prompt capaz de orientar um modelo de IA a gerar esse Dockerfile.

---

# Informações Disponíveis

O enunciado fornecia os seguintes elementos técnicos:

- aplicação Python Flask;
- estrutura completa do projeto;
- dependências da aplicação;
- porta utilizada pela API;
- comando oficial de execução com Gunicorn;
- variáveis de ambiente obrigatórias;
- conjunto de boas práticas que deveriam obrigatoriamente ser atendidas.

Essas informações permitiram construir um prompt suficientemente detalhado para reduzir ambiguidades durante a geração do artefato.

---

# Objetivo

O objetivo desta questão não era simplesmente produzir um Dockerfile.

O foco principal consistia em aplicar corretamente o framework **R-T-F (Role – Task – Format)** para estruturar um prompt claro, completo e capaz de orientar o modelo de IA na geração de uma solução alinhada às boas práticas de DevOps.

---

# Competências Avaliadas

Esta atividade permitiu exercitar conhecimentos relacionados a:

- Prompt Engineering;
- Docker;
- Conteinerização;
- DevOps;
- Segurança de Containers;
- Python Flask;
- Documentação Técnica.

---

# Resultado Esperado

Ao final da execução do prompt, esperava-se obter:

- um Dockerfile funcional;
- configuração adequada para ambiente de produção;
- aplicação das principais boas práticas de segurança;
- otimização do processo de build;
- uma breve justificativa das decisões adotadas pelo modelo.

---

# Relação com o Framework

Esta questão foi planejada para demonstrar que tarefas de geração de código são particularmente adequadas ao framework **R-T-F**, pois ele permite definir explicitamente:

- o papel assumido pelo modelo (**Role**);
- a atividade a ser executada (**Task**);
- o formato esperado para a resposta (**Format**).

Essa estrutura reduz ambiguidades e favorece respostas objetivas e reproduzíveis, características importantes em atividades de infraestrutura como código e automação.

---

# Sugestões de Melhoria

Embora o cenário tenha sido suficiente para produzir um Dockerfile de qualidade, futuras evoluções poderiam incluir requisitos adicionais, como:

- suporte a builds multiestágio (*multi-stage builds*);
- integração com ferramentas de análise de vulnerabilidades;
- utilização de imagens *distroless*;
- assinatura de imagens de container;
- geração automática de SBOM (*Software Bill of Materials*).

Essas sugestões representam possíveis evoluções para ambientes corporativos e **não alteram o escopo da atividade originalmente proposta**.

---

⬅️ Anterior [README.md](README.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY) | ➡️ Próximo [02-prompt.md](02-prompt.md)
