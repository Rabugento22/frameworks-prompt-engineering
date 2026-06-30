# Conclusão

## Objetivo da Atividade

A Questão 05 teve como objetivo aplicar o framework **B-A-B** para orientar um Modelo de Linguagem na modernização de um Deployment Kubernetes legado.

A atividade demonstrou como a Engenharia de Prompt pode auxiliar na evolução de workloads, promovendo melhorias significativas em segurança, disponibilidade e confiabilidade.

---

# Resultados Obtidos

O modelo foi capaz de transformar um manifesto contendo diversas limitações em uma configuração moderna que inclui:

- múltiplas réplicas;
- estratégia RollingUpdate;
- utilização de Kubernetes Secrets;
- requests e limits;
- probes de saúde;
- SecurityContext restritivo;
- execução como usuário não-root;
- endurecimento da configuração do container.

Essas melhorias tornam o Deployment significativamente mais adequado para ambientes produtivos.

---

# Avaliação do Framework

O framework **B-A-B** mostrou excelente desempenho para cenários de modernização.

Ao descrever claramente o estado atual, o estado desejado e o caminho entre ambos, foi possível conduzir o modelo de forma consistente durante todo o processo de transformação.

---

# Aprendizados

A atividade reforçou que modelos de IA podem acelerar iniciativas de modernização de infraestrutura, desde que recebam requisitos claros e objetivos.

Também evidenciou que frameworks voltados à transformação são especialmente úteis para tarefas de refatoração e evolução arquitetural.

---

# Aplicação em Ambientes Reais

Os conhecimentos desenvolvidos podem ser aplicados em diversos cenários, incluindo:

- modernização de aplicações legadas;
- hardening de workloads Kubernetes;
- revisão de manifests;
- iniciativas de DevSecOps;
- Platform Engineering;
- padronização de ambientes corporativos.

---

# Considerações Finais

A atividade atingiu plenamente seus objetivos ao demonstrar como um framework de Prompt Engineering pode orientar a evolução de workloads Kubernetes de forma estruturada e consistente.

As recomendações adicionais, como **PodDisruptionBudget**, **NetworkPolicy**, **topologySpreadConstraints** e **External Secrets Operator**, aproximam ainda mais a solução das práticas adotadas em ambientes Kubernetes corporativos modernos e demonstram a importância da melhoria contínua na administração de plataformas em nuvem.
