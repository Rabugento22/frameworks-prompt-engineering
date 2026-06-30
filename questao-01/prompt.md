# Prompt Utilizado

## Questão 01

### Tema

Criação de um Dockerfile para uma aplicação Flask utilizando boas práticas de conteinerização.

---

# Framework Utilizado

## R-T-F

O framework **R-T-F (Role – Task – Format)** foi utilizado para estruturar o prompt de forma clara e objetiva.

Sua estrutura é composta por:

- **Role:** define o papel que o modelo deve assumir.
- **Task:** descreve a atividade que deverá ser executada.
- **Format:** especifica o formato esperado para a resposta.

Essa organização reduz ambiguidades e aumenta a previsibilidade do resultado.

---

# Estrutura do Prompt

```text
Role

↓

Task

↓

Format
```

---

# Prompt

```text
Você é um Engenheiro DevOps Sênior especializado em Docker, Python, Flask e Segurança de Containers.

Sua tarefa é criar um Dockerfile para uma aplicação Flask destinada a ambiente de produção.

O Dockerfile deverá seguir boas práticas de conteinerização, incluindo:

• Utilização de uma imagem base oficial do Python;
• Definição do diretório de trabalho;
• Instalação das dependências utilizando requirements.txt;
• Aproveitamento eficiente do cache de camadas do Docker;
• Exposição da porta padrão da aplicação;
• Configuração do comando de inicialização utilizando Gunicorn;
• Organização das instruções visando reduzir o tamanho final da imagem;
• Inclusão de comentários explicando cada etapa do Dockerfile.

Apresente apenas o Dockerfile final em formato de bloco de código Markdown, seguido de uma breve explicação das principais decisões adotadas.
```

---

# Objetivo do Prompt

O objetivo foi orientar o modelo para produzir um Dockerfile completo e organizado, compatível com boas práticas de desenvolvimento e implantação de aplicações Flask em containers.

Além da geração do código, buscou-se obter uma explicação resumida das decisões adotadas durante sua construção.

---

# Justificativa da Estrutura

A escolha do framework R-T-F foi motivada pelas características da tarefa.

Como o problema consistia na geração de um artefato técnico específico, era importante definir claramente:

- o papel desempenhado pelo modelo;
- a atividade a ser executada;
- o formato esperado da resposta.

Essa abordagem favorece respostas objetivas e reduz a necessidade de refinamentos posteriores.

---

# Resultado Esperado

Ao final da execução do prompt, esperava-se obter um Dockerfile contendo:

- imagem base apropriada;
- organização eficiente das camadas;
- instalação das dependências;
- configuração adequada do ambiente de execução;
- inicialização da aplicação com Gunicorn;
- comentários explicativos;
- aderência às boas práticas de conteinerização.

---

# Observações

O conteúdo apresentado neste documento corresponde ao prompt utilizado durante o experimento e foi preservado para garantir a reprodutibilidade da atividade.

Qualquer sugestão de melhoria é apresentada separadamente no arquivo `README.md` desta questão, sem alterar o prompt originalmente utilizado.
