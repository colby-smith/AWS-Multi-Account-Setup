# Development Account

The Development account provides an isolated environment for experimentation, prototyping, and early‑stage work. It mirrors the structure of the Staging and Production accounts but operates with relaxed guardrails. It is an ephemeral environment and all resources are destroyed after 12 hours upon creation. It allows me to experiment and deploy resources and pipelines without the risk of a surprise monthly bill.

## Purpose
- Space for testing infrastructure changes.
- Allows experimentation without affecting staging tests or the production environments.
- Supports Terraform‑driven deployments and automation workflows.

## Security
- Access is solely given to myself through AWS IAM Identity Center.
- Root account protected with MFA and unused for daily operations.