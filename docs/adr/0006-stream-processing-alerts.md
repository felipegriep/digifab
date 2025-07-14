# ADR 0006: Stream Processing for Real-Time Alerts

## Status
Accepted

## Context
A detecção de desvios em tempo real é um requisito crítico. A arquitetura baseada em Kafka permite capturar eventos de produção continuamente.

## Decision
Implementar uma camada de processamento de stream (por exemplo, Kafka Streams ou Flink) para detectar padrões e gerar alertas automáticos.

## Consequências
- Alertas em tempo real baseados em regras e desvios
- Potencial uso de CEP (Complex Event Processing)
- Aumento da complexidade na manutenção de pipelines
