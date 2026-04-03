# Management Account

The Management account is the administrative control plane for my entire AWS Organisation. It hosts no workloads and is restricted to governance‑related responsibilities. This allows me to consolidate billing between accounts and keep monthly costs to a minimum, a centralised hub for my personal organisation.

## Purpose
- AWS Organisations management.
- Centralised billing and cost visibility.
- SCP creation and attachment.
- Identity Center configuration.

## Security
- Access is solely given to myself through AWS IAM Identity Center.
- Root account protected with MFA and unused for daily operations.
- No compute or data workloads permitted.