# ADR 0004: Deploy on AWS EKS

## Status
Accepted

## Context
O sistema requer alta disponibilidade, escalabilidade e integração com serviços AWS como S3, MSK e RDS. É necessário orquestrar múltiplos serviços e manter segregação de ambientes.

## Decision
Utilizar o AWS EKS (Elastic Kubernetes Service) para hospedar os contêineres da solução (web, backend, Keycloak, Metabase).

## Consequências
- Orquestração e escalabilidade gerenciadas
- Integração nativa com serviços AWS
- Curva de aprendizado inicial com Kubernetes
