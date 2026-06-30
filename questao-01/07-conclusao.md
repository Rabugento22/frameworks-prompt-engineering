# Conclusão

## Objetivo da Atividade

A Questão 01 teve como objetivo aplicar um framework de Prompt Engineering para orientar um Modelo de Linguagem (LLM) na geração de um Dockerfile destinado a uma aplicação Flask preparada para execução em ambiente Kubernetes.

Mais do que produzir um arquivo Dockerfile funcional, a atividade buscou demonstrar como a estruturação adequada de um prompt influencia diretamente a qualidade da resposta produzida pelo modelo de IA.

---

# Resultados Obtidos

A utilização do framework **R-T-F (Role – Task – Format)** permitiu construir um prompt claro, objetivo e suficientemente detalhado para que o modelo compreendesse corretamente o contexto da atividade.

Como resultado, foi produzido um Dockerfile que atendeu aos principais requisitos definidos no desafio, incluindo:

- utilização de imagem oficial do Python;
- definição do diretório de trabalho;
- instalação das dependências;
- organização das camadas para melhor aproveitamento do cache;
- configuração de variáveis de ambiente;
- exposição da porta da aplicação;
- utilização do Gunicorn como servidor WSGI;
- execução utilizando usuário não privilegiado;
- implementação de um HEALTHCHECK.

Esses elementos demonstram que a estrutura do prompt foi suficiente para orientar corretamente o modelo durante a geração da solução.

---

# Avaliação do Framework

O framework **R-T-F** mostrou-se particularmente eficiente para tarefas voltadas à geração de artefatos técnicos.

A separação entre:

- **Role**
- **Task**
- **Format**

reduziu ambiguidades e facilitou a interpretação dos requisitos pelo modelo.

Durante a atividade foi possível perceber que quanto mais clara era a definição desses três componentes, menor era a necessidade de refinamentos posteriores.

---

# Avaliação do Modelo

O modelo **GPT-4o** apresentou excelente desempenho na execução desta atividade.

Entre os aspectos observados destacam-se:

- boa interpretação do contexto;
- geração consistente de código;
- organização da resposta;
- utilização de boas práticas de Docker;
- explicações técnicas claras.

Embora o resultado tenha sido bastante satisfatório, permanece recomendada a revisão humana antes da utilização em ambientes de produção, especialmente em relação às políticas internas de segurança e governança.

---

# Aprendizados Obtidos

Durante o desenvolvimento desta questão foi possível compreender que a qualidade das respostas produzidas por um modelo de IA depende diretamente da qualidade do prompt elaborado.

O exercício demonstrou que Prompt Engineering não consiste apenas em formular perguntas, mas em estruturar corretamente o contexto, definir papéis, estabelecer objetivos e especificar claramente o formato esperado para a resposta.

Além disso, evidenciou que frameworks como o R-T-F funcionam como mecanismos de organização do raciocínio, aumentando a previsibilidade e a consistência dos resultados.

---

# Aplicação em Cenários Reais

Os conceitos aplicados nesta atividade possuem ampla utilização em ambientes corporativos.

Entre as possíveis aplicações destacam-se:

- geração automatizada de Dockerfiles;
- criação de manifests Kubernetes;
- automação de scripts Bash;
- geração de pipelines CI/CD;
- documentação técnica;
- Infraestrutura como Código (IaC);
- automação de tarefas DevOps.

Isso demonstra que Prompt Engineering pode contribuir significativamente para aumentar a produtividade das equipes de Engenharia de Software e Plataforma.

---

# Considerações Finais

A Questão 01 atingiu plenamente os objetivos propostos pela disciplina.

Foi possível aplicar um framework de Prompt Engineering em um problema técnico realista, analisar criticamente o resultado produzido por um Modelo de Linguagem e documentar todo o processo de forma estruturada.

Além da solução técnica obtida, a atividade reforçou a importância da comunicação estruturada entre seres humanos e modelos de IA, evidenciando que a qualidade dos resultados depende tanto da capacidade do modelo quanto da forma como o problema é apresentado.

---

# Encerramento

A conclusão desta primeira questão estabelece a base para as próximas atividades do projeto.

Nas questões seguintes serão explorados novos cenários, diferentes frameworks de Prompt Engineering e outros modelos de IA, permitindo comparar abordagens, identificar vantagens e compreender em quais contextos cada framework apresenta melhor desempenho.
