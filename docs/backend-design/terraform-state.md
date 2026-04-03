# Terraform State Backend

Each AWS account has its own Terraform backend. This keeps state isolated per environment and avoids relying on a single centralised bucket for everything. Every account contains its own S3 bucket for storing Terraform state and a DynamoDB table for state locking.

## Components
- **S3 bucket** – stores the Terraform state for that specific account.
- **DynamoDB table** – handles state locking so only one Terraform run can modify state at a time.

## Why It’s Set Up This Way
- Each environment manages its own state independently.
- No cross‑account dependencies for Terraform, allowing for easier pipeline creation.
- If one account ever breaks or is removed, the others are unaffected.
- Keeps things simple and predictable for a personal multi‑account setup.

## Access
Only Terraform (through IAM Identity Center roles) can access the backend resources in each account.  
No workloads or compute resources run in these accounts, and nothing outside Terraform touches the state buckets or lock tables.