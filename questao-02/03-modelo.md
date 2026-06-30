# questao-02/03-modelo.md

# Modelo de IA Utilizado

## Modelo

**Claude Sonnet 4 (Anthropic)**

---

# Objetivo da Escolha

Nesta atividade foi necessário gerar um script Bash robusto para automatizar o backup de um banco PostgreSQL em ambiente Linux, integrando serviços da AWS e aplicando boas práticas de SRE.

A tarefa exigia conhecimentos em:

- Shell Script;
- PostgreSQL;
- AWS CLI;
- Amazon S3;
- Linux;
- Tratamento de erros;
- Automação operacional;
- Observabilidade.

O modelo **Claude Sonnet 4** foi escolhido por sua reconhecida capacidade na geração de scripts de infraestrutura e automação, produzindo código organizado, legível e alinhado às melhores práticas operacionais. :contentReference[oaicite:0]{index=0}

---

# Características do Modelo

Durante o experimento, observou-se que o modelo apresentou:

- excelente organização do código;
- tratamento consistente de exceções;
- boa modularização através de funções;
- utilização de variáveis para facilitar manutenção;
- elevada legibilidade.

---

# Relação com o Framework

O framework utilizado foi o **R-T-F**.

O Claude Sonnet 4 respondeu corretamente aos três componentes:

- **Role:** assumiu o papel de Engenheiro SRE Sênior;
- **Task:** desenvolveu o script completo;
- **Format:** retornou apenas o script e a explicação solicitada.

---

# Pontos Fortes

Entre os principais aspectos positivos observados destacam-se:

- utilização do `set -euo pipefail`;
- criação de funções reutilizáveis;
- validação das dependências;
- geração de logs;
- organização do código;
- facilidade de manutenção.

---

# Limitações

Como todo código gerado por IA, recomenda-se revisão humana antes da utilização em produção, principalmente para validar requisitos específicos de segurança, conformidade e arquitetura da organização.

---

# Conclusão

O Claude Sonnet 4 mostrou-se altamente adequado para tarefas de automação operacional, produzindo um script consistente, organizado e alinhado às boas práticas de SRE e infraestrutura.
