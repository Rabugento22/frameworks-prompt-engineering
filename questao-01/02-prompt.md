🏠 [Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 📘 [Questão](README.md)

---

# Prompt Utilizado

## Questão 01

### Framework Aplicado

**R-T-F (Role – Task – Format)**

---

# Objetivo

O objetivo deste prompt foi orientar um Modelo de Linguagem (LLM) na criação de um **Dockerfile para uma aplicação Flask**, seguindo boas práticas de conteinerização voltadas para ambientes de produção.

A utilização do framework R-T-F permitiu organizar a solicitação em três partes bem definidas, reduzindo ambiguidades e aumentando a previsibilidade do resultado.

---

# Estrutura do Framework

```text
Role
 ↓
Task
 ↓
Format
```

Cada elemento possui uma responsabilidade específica:

| Elemento | Finalidade |
|----------|------------|
| **Role** | Define o papel que o modelo deve assumir. |
| **Task** | Especifica a atividade que deverá ser executada. |
| **Format** | Define como a resposta deverá ser apresentada. |

---

# Prompt Original

> **Role**
>
> Você é um Engenheiro DevOps Sênior especializado em Docker, Python, Flask e Kubernetes, com ampla experiência em conteinerização de aplicações para ambientes de produção.
>
> **Task**
>
> Crie um Dockerfile para uma aplicação Flask considerando os seguintes requisitos:
>
> - utilizar uma imagem oficial do Python;
> - definir corretamente o diretório de trabalho;
> - copiar inicialmente o arquivo `requirements.txt`;
> - instalar as dependências utilizando `pip`;
> - copiar os arquivos da aplicação;
> - expor a porta utilizada pela API;
> - executar a aplicação utilizando Gunicorn;
> - organizar as instruções para aproveitar o cache de camadas do Docker;
> - seguir boas práticas de segurança e desempenho.
>
> **Format**
>
> Apresente:
>
> 1. O Dockerfile completo;
> 2. Comentários explicando cada etapa;
> 3. Uma breve justificativa das decisões adotadas.

---

# Análise da Estrutura

O framework R-T-F mostrou-se adequado porque separa claramente:

- quem é o especialista (Role);
- qual atividade será realizada (Task);
- como a resposta deverá ser entregue (Format).

Essa separação facilita a interpretação do problema pelo modelo e aumenta a qualidade da resposta produzida.

---

# Benefícios Observados

Durante a execução da atividade foi possível perceber que o uso do framework proporcionou:

- maior clareza na definição do problema;
- redução de ambiguidades;
- resposta mais organizada;
- aderência ao formato solicitado;
- menor necessidade de refinamentos posteriores.

---

# Relação com o Cenário Proposto

O prompt foi construído considerando o contexto da empresa **Hill Valley Tech**, cuja equipe precisava conteinerizar uma aplicação Flask para implantação em um ambiente Kubernetes.

A definição detalhada do papel, da tarefa e do formato permitiu que o modelo compreendesse corretamente o cenário e produzisse um Dockerfile compatível com os requisitos apresentados.

---

# Sugestões de Melhoria

Caso este prompt fosse utilizado em um ambiente corporativo, poderiam ser acrescentados requisitos adicionais, tais como:

- execução com usuário não privilegiado;
- utilização de imagens *slim* ou *distroless*;
- inclusão de instrução `HEALTHCHECK`;
- geração de imagem utilizando *multi-stage build*;
- fixação das versões das dependências;
- conformidade com políticas internas de segurança.

Essas sugestões têm caráter evolutivo e **não alteram o prompt originalmente utilizado durante o desafio**.

---

# Conclusão

A aplicação do framework **R-T-F** permitiu estruturar um prompt claro, objetivo e alinhado ao problema proposto.

A divisão entre papel, tarefa e formato mostrou-se suficiente para orientar o modelo na geração de um Dockerfile consistente, demonstrando como uma boa engenharia de prompts influencia diretamente a qualidade das respostas produzidas por modelos de IA.

---

⬅️ [Anterior](01-contexto.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](SUMMARY.md) | ➡️ [Próximo](03-modelo.md)

---
