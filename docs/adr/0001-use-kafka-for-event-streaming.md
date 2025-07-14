# ADR 0001: Use Kafka for Event Streaming

## Status
Accepted

## Context
Inicialmente a mensageria utilizava RabbitMQ, mas o sistema exige alto volume de transações e capacidade de reprocessamento e replay.

## Decision
Substituir RabbitMQ por Apache Kafka, utilizando AWS MSK como solução gerenciada.

## Consequências
- Escalabilidade horizontal
- Retenção e replay de eventos
- Aumento da complexidade operacional
