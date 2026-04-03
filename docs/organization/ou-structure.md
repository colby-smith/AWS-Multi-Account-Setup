# Organisational Unit Structure

My AWS Organisation is split into a small set of OUs to keep environments separated and to make it easy to apply SCPs where they belong. The structure is intentionally simple since this is a personal setup, and not a large enterprise.

## Structure
- **Root**
  - **Management OU**
    - &lt;org&gt;-Management
  - **Workloads OU**
    - &lt;org&gt;-Development
    - &lt;org&gt;-Staging
    - &lt;org&gt;-Production

## Why It’s Set Up This Way
- Keeps governance and billing separate from workloads.
- Makes it easy to attach SCPs to the right group of accounts.
- Keeps environments isolated so mistakes in one don’t affect the others.
- Leaves room to expand later without restructuring anything.

This layout keeps everything clean and predictable while still being flexible enough for future projects.