# Staging Account

The Staging account acts as a pre‑production environment used to validate and test changes before release to Production. It allows me to test new projects and features without fear of breaking existing public‑facing projects.

## Purpose
- Final testing environment before Production.
- Mirrors Production architecture as closely as possible.
- Ensures safe promotion of Terraform changes.

## Security
- Access is solely given to myself through AWS IAM Identity Center.
- Root account protected with MFA and unused for daily operations.