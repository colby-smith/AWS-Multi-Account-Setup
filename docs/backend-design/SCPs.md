# Service Control Policies (SCPs)

This project uses a small set of Service Control Policies to keep my AWS Organisation safe, predictable, and cost‑efficient. These policies act as guardrails rather than permissions, meaning they restrict what accounts are allowed to do but don’t grant access by themselves. The goal is to stop anything that could accidentally cost money, break the organisation, or interfere with Terraform.

## Why I Use SCPs
- Prevent creation of high‑cost services I don’t need.
- Keep everything inside my chosen AWS regions.
- Block IAM users so everything goes through IAM Identity Center.
- Stop risky or unnecessary services from being created.
- Following terraform best practices.

## What’s Included
The SCPs in this repository cover:
- Region restrictions (eu‑west‑1 and us‑east‑1 as primaries).
- Cost‑control boundaries (no NAT Gateways, Redshift, OpenSearch, etc.).
- IAM user restrictions.
- Prevention of expensive or GPU instance families.

Each policy is intentionally minimal and focused. They’re designed for a personal multi‑account setup, not an enterprise environment.