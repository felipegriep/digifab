# 🏭 DigiFab - Sistema de Rastreabilidade MES

## Índice
- [Sobre o Projeto](#sobre-o-projeto)
- [Visão do Sistema](#visão-do-sistema)
- [Principais Funcionalidades](#principais-funcionalidades)
- [Decisões Arquiteturais Relevantes](#decisões-arquiteturais-relevantes)
- [C4 Model](#c4-model)
- [Restrições Técnicas](#restrições-técnicas)
- [Estilos e Padrões Arquitetônicos](#estilos-e-padrões-arquitetônicos)
- [Atributos de Qualidade Considerados](#atributos-de-qualidade-considerados)
- [Principais Desafios Arquiteturais](#principais-desafios-arquiteturais)
- [Conclusão](#conclusão)

## Sobre o Projeto

Este projeto foi desenvolvido como avaliação do curso de **Pós-Graduação em Engenharia de Software** da **Universidade do Vale do Rio dos Sinos (UNISINOS)**. Ele se baseia em um **caso de ensino** proposto para o ano de 2025, com foco na rastreabilidade da cadeia de suprimentos de uma indústria de bens de consumo.

A iniciativa busca aplicar, de forma prática e integrada, conceitos avançados de arquitetura de software — incluindo modelagem C4, decisão arquitetural (ADRs), atributos de qualidade, e uso de padrões modernos como microsserviços, autenticação federada e arquitetura orientada a eventos.

Além de cumprir os requisitos acadêmicos, o projeto também visa demonstrar a viabilidade de soluções arquiteturais robustas e escaláveis aplicáveis em cenários reais.

**Instituição:** Universidade do Vale do Rio dos Sinos (UNISINOS)  
**Curso:** Pós-Graduação em Engenharia de Software  
**Base:** Caso de Ensino – Startup 2025 (Sistema DigiFab)
**Integrantes do Grupo:**
- Felipe Griep
- Giulia Mendes
- Rosival de Souza
- Suriel Jacobsen
- Tiago Zardin 

## Visão do Sistema
O sistema em desenvolvimento é uma plataforma web responsiva voltada à rastreabilidade na cadeia de suprimentos industriais, alinhada às diretrizes de um **Manufacturing Execution System (MES)**.

## Principais Funcionalidades
- Registro da origem da matéria-prima por lote;
- Onboarding de usuários com diferentes perfis (gerentes, operadores);
- Geração de trilhas de auditoria e retenção de dados;
- Armazenamento e recuperação de documentos (via Amazon S3);
- Processamento e monitoramento de eventos em tempo real;
- Gerenciamento de perfis e permissões;
- Rastreabilidade da cadeia produtiva.

## Decisões Arquiteturais Relevantes
- [0001 - Uso do Kafka](./docs/adr/0001-use-kafka-for-event-streaming.md): O Apache Kafka será adotado para transmissão de eventos de produção de forma assíncrona e escalável, permitindo desacoplamento entre componentes.
- [0002 - Uso do Keycloak](./docs/adr/0002-use-keycloak-for-auth.md): A autenticação e autorização de usuários serão centralizadas via Keycloak, fornecendo suporte a múltiplos perfis e integrações com SSO.
- [0003 - Onboarding Integrado](./docs/adr/0003-integrated-onboarding.md): A experiência de entrada no sistema será unificada para promover usabilidade e coerência entre diferentes perfis.
- [0004 - Implantação em AWS EKS](./docs/adr/0004-deploy-on-aws-eks.md): A infraestrutura será orquestrada em Kubernetes via Amazon EKS, permitindo escalabilidade, alta disponibilidade e governança de serviços.
- [0005 - Gerenciamento de Documentos com S3](./docs/adr/0005-document-management-with-s3.md): Arquivos e documentos (como certificados e relatórios de produção) serão armazenados no Amazon S3, garantindo integridade e versionamento.
- [0006 - Processamento de Alertas em Streaming](./docs/adr/0006-stream-processing-alerts.md): Alertas de produção serão processados em tempo real para rápida reação a falhas ou desvios.
- [0007 - Trilhas de Auditoria e Retenção](./docs/adr/0007-audit-trails-and-data-retention.md): O sistema manterá logs completos de ações críticas com suporte à retenção baseada em políticas.
- [0008 - Perfis e Interface de Onboarding](./docs/adr/0008-user-profiles-and-onboarding-ui.md): Interface adaptável à jornada de diferentes usuários, com foco em produtividade e segurança.

## C4 Model
Para visualizar o diagrama C4 Model, [clique aqui](docs/c4/c4-model.md).

## Restrições Técnicas
- Backend baseado em eventos via Apache Kafka;
- Autenticação e autorização centralizadas com Keycloak;
- Armazenamento de documentos exclusivamente em Amazon S3;
- Implantação em nuvem AWS utilizando EKS;
- Sistema 100% web responsivo (sem app mobile);
- Suporte a trilhas de auditoria e conformidade industrial.

## Estilos e Padrões Arquitetônicos
- Arquitetura Orientada a Eventos (EDA);
- Microsserviços;
- Kubernetes (via Amazon EKS);
- Autenticação federada com OAuth2/OpenID Connect;
- Infraestrutura como Código.

## Atributos de Qualidade Considerados
- Escalabilidade horizontal;
- Alta disponibilidade e resiliência;
- Segurança e controle de acesso;
- Auditoria e conformidade normativa;
- Boa experiência de uso e adaptabilidade por perfil;
- Extensibilidade e desacoplamento.

## Principais Desafios Arquiteturais
- Consistência eventual em um ambiente assíncrono;
- Segurança sem prejudicar a usabilidade;
- Equilíbrio entre desempenho, rastreabilidade e resiliência;
- Complexidade operacional (Kafka, Keycloak, Kubernetes);
- Suporte a retenção de dados e auditoria externa.

## Conclusão
O projeto DigiFab representa uma iniciativa estratégica voltada à transformação digital de processos industriais, com foco na rastreabilidade da produção e conformidade regulatória. A arquitetura proposta alinha-se às melhores práticas modernas de desenvolvimento de software distribuído, combinando escalabilidade, segurança e flexibilidade.

As decisões arquiteturais adotadas — como o uso de Apache Kafka, Keycloak, AWS EKS e Amazon S3 — refletem o compromisso com um ecossistema robusto, extensível e preparado para os desafios da indústria 4.0. A escolha por uma arquitetura orientada a eventos e uma infraestrutura baseada em microsserviços permite que o sistema evolua continuamente, respondendo com agilidade às necessidades do negócio.

Com isso, o DigiFab se consolida como uma base tecnológica sólida para a gestão eficiente e auditável da cadeia de suprimentos, contribuindo diretamente para a excelência operacional e a competitividade industrial.