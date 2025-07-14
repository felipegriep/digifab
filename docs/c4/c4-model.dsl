workspace "Rastreabilidade Industrial - DigiFab" {
    model {
        user = person "Usuário do Sistema" {
            description "Operadores, supervisores, gerentes, analistas e auditores da produção"
        }

        erp = softwareSystem "ERP Corporativo" {
            description "Sistema legado da empresa"
        }


        system = softwareSystem "DigiFab" {
            description "Plataforma de rastreabilidade e automação industrial"

            user -> system "Utiliza via navegador web"

            webApp = container "Web App Angular" {
                user -> this "Utiliza via navegador web"
                technology "Angular SPA"
                description "Interface responsiva com onboarding, tooltips e dashboards"
            }

            api = container "API Backend" {
                webApp -> this "Chama via REST"
                technology "Spring Boot + REST"
                description "APIs RESTful para negócios, autenticação, integração e eventos"
            }

            kafka = container "Kafka Broker" {
                api -> this "Publica eventos"
                technology "Apache Kafka (MSK)"
                description "Plataforma de mensageria para eventos de integração"
            }

            keycloak = container "Keycloak Auth Server" {
                webApp -> this "Realiza login"
                api -> this "Valida tokens"
                technology "Keycloak + OAuth2"
                description "Gerenciamento de autenticação, autorização e RBAC"
            }

            database = container "MySQL" {
                api -> this "Realiza a persistência"
                technology "MySQL RDS"
                description "Banco de dados transacional com versionamento e trilhas"
            }

            cache = container "Redis" {
                api -> this "Realiza cache"
                technology "Redis"
                description "Cache de sessões e dados temporários"
            }

            s3 = container "AWS S3" {
                api -> this "Armazena/recupera arquivos"
                technology "S3"
                description "Armazenamento de documentos e evidências criptografadas"
            }

            bi = container "Metabase" {
                api -> this "Alimenta com dados" 
                technology "Metabase"
                description "Dashboards e relatórios estratégicos com RBAC"
            }

            kafka -> erp "Integra ERP via eventos"
        }
    }

    views {
        systemContext system {
            include *
            autolayout lr
        }

        container system {
            include *
            autolayout lr
        }

        theme default
    }
}