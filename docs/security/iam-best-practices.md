# IAM Best Practices

IAM in this setup is kept intentionally simple. Everything goes through AWS IAM Identity Center, and no IAM users are created in any account. This keeps access clean, consistent, and easy to manage across the whole organisation. No IAM users, no long‑lived access keys, and no manual credentials — removing one of the biggest security risks in AWS.

## Roles Per Environment
Each account has a small set of roles mapped from Identity Center:

- **Administrator** – full access for managing the account, only given to myself.
- **ReadOnly** – safe inspection without the risk of changing anything. Can be given as a temporary role to other engineers.

These roles are the same across Development, Staging, and Production, with Management only allowing myself access.

## No Inline Policies
Inline IAM policies are blocked.  
Only managed policies (AWS or custom) are used, which keeps permissions tidy and version‑controlled.

## MFA
MFA is required for:

- Identity Center sign‑in
- Root accounts

## Least Privilege
Permissions are kept minimal, and AWS resources are only given the permissions required to complete their task.