# ADR 0002: Use Keycloak for Authentication

## Status
Accepted

## Context
A arquitetura previa OAuth2, mas não definia um provedor. Keycloak é open-source, robusto e extensível.

## Decision
Utilizar Keycloak como provedor de autenticação e autorização via OAuth2, integrado ao backend.

## Consequências
- Padronização de RBAC
- Suporte a MFA e integração futura com outros IDPs
