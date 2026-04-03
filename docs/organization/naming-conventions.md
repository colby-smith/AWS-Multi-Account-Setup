# Naming Conventions

I use simple and consistent naming across my AWS Organisation to keep things tidy and easy to understand. Everything follows a predictable pattern so I always know which environment or project something belongs to.

## Account Names
Each AWS account is named clearly based on its purpose:

- &lt;org&gt;-Management
- &lt;org&gt;-Development
- &lt;org&gt;-Staging
- &lt;org&gt;-Production

## Resource Naming
Resources follow a straightforward pattern: **&lt;project&gt;-&lt;service&gt;-&lt;envsuffix&gt;**

Examples:
- `terraform-state-s3-mg`
- `terraform-state-s3-dv`
- `terraform-state-s3-st`
- `terraform-state-s3-pr`

This keeps resources grouped logically and makes it obvious where they belong.

## Tagging
All projects and resources include a small set of tags to help with filtering, cost tracking, and keeping everything organised across accounts.

Example:
- **Name**: `terraform-state-lock-dynamodb-dv`
- **Environment**: `development`
- **Project**: `AWS-Multi-Account-Setup`
- **ManagedBy**: `Terraform`