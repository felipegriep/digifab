# Architecture Haiku – Versão 4

## 🌐 Descritivo do Sistema
Plataforma web responsiva para rastreabilidade industrial em tempo real, automatização de registros operacionais e gestão documental integrada à cadeia de suprimentos. A solução opera em nuvem AWS, com alta disponibilidade, autenticação segura, integração com ERP via eventos Kafka e onboarding embutido com foco em usabilidade.

## 🎯 Objetivos de Negócio
- Garantir rastreabilidade completa de insumos e produtos  
- Eliminar registros manuais com coleta automática (RFID e QR Code)  
- Apoiar auditorias e conformidade com rastreamento reverso  
- Oferecer painéis e alertas para desvio de processos  
- Proteger dados pessoais e operacionais (LGPD)  
- Reduzir perdas e aumentar eficiência fabril  
- Permitir integração confiável com ERPs legados  
- Facilitar o uso com onboarding assistido e documentação contextual  

## ⛓️ Restrições
- Mensageria baseada em Kafka (stream de eventos)  
- Autenticação via Keycloak + OAuth2  
- Interface web responsiva (sem app mobile)  
- Implantação exclusiva na AWS  
- Blockchain fora do escopo da 1ª versão  
- Backup com política 3-2-1, criptografado, com testes regulares  
- Alta disponibilidade exigida (RTO: 5 min; RPO: 1 min)  
- LGPD e requisitos de auditoria obrigatórios  
- Onboarding e help embutidos no produto  

## ⭐ Atributos de Qualidade Prioritários
Disponibilidade > Segurança > Confiabilidade > Usabilidade > Auditabilidade

## 🧩 Decisões Arquiteturais Principais
- Angular SPA com tooltips e ajuda contextual  
- Spring Boot + APIs RESTful + Kafka para integração  
- Keycloak + OAuth2 + RBAC para segurança  
- MySQL + Redis para persistência e cache  
- Armazenamento de documentos criptografado no AWS S3  
- Integração com ERP via eventos Kafka  
- Metabase para dashboards com RBAC  
- Trilhas de auditoria, backup 3-2-1, observabilidade com Prometheus + Grafana  